from qiskit.quantum_info import SparsePauliOp
from typing import Sequence
import configparser
from qiskit_aer import AerSimulator
from qiskit.providers.fake_provider import GenericBackendV2
from qiskit_ibm_runtime import QiskitRuntimeService
from typing import Union
import time


def validate_args(args) -> None:
    """
    コマンドライン引数の検証を行う関数。
    引数が正しい形式であるかを確認し、エラーがあればメッセージを表示して終了します。

    Args:
        args (list): コマンドライン引数のリスト。

    Raises:
        ValueError: 引数が不正な場合に発生します。
    """
    if len(args) != 2:
        raise ValueError(
            'Too few arguments. Usage: python qdrift_pai/prepare_circuits.py <"QDRIFT" or "QDRIFT_PAI">'
        )
    if args[1] not in ["QDRIFT", "QDRIFT_PAI"]:
        raise ValueError('Invalid arguments. arg1 must be "QDRIFT" or "QDRIFT_PAI".')


def get_save_dir(config: configparser.ConfigParser, mode: str) -> str:
    """
    設定ファイルから保存先ディレクトリを取得する関数。

    Args:
        config (configparser.ConfigParser): 設定ファイルの ConfigParser オブジェクト。
        mode (str): モード ("QDRIFT" または "QDRIFT_PAI")。

    Returns:
        str: 保存先ディレクトリのパス。
    """
    if mode == "QDRIFT":
        save_dir = config["QDRIFT"]["save_dir"]
    elif mode == "QDRIFT_PAI":
        save_dir = config["QDRIFT_PAI"]["save_dir"]
    elif mode == "EXACT":
        save_dir = config["EXACT"]["save_dir"]
    else:
        raise ValueError("Invalid mode. Must be QDRIFT, QDRIFT_PAI or EXACT")

    return save_dir


def get_backend(
    config: configparser.ConfigParser,
) -> Union[QiskitRuntimeService, GenericBackendV2]:
    """
    バックエンドを取得する関数。

    Args:
        config (configparser.ConfigParser): 設定ファイルの ConfigParser オブジェクト。

    Returns:
        Union[QiskitRuntimeService, GenericBackendV2 (or AerSimulator)]: バックエンドのインスタンス。
            実機であれば QiskitRuntimeService のインスタンス、シミュレータであれば GenericBackendV2 (or AerSimulator) のインスタンスを返します。
    """
    is_qpu = config.getboolean("DEFAULT", "is_qpu")
    nqubits = config.getint("DEFAULT", "nqubits")

    if is_qpu:
        service = QiskitRuntimeService()
        backend = service.backend("ibm_fez")
    if not is_qpu:  # for simulator
        # GenericBackendV2 randomly samples historical IBM backend data to simulate the real device.
        # So we fix a seed to ensure reproducibility.
        # See: https://docs.quantum.ibm.com/api/qiskit/qiskit.providers.fake_provider.GenericBackendV2
        # backend = GenericBackendV2(nqubits, seed=42)  # noisy simulator

        backend = AerSimulator()  # noiseless simulator

    return backend


def get_hamil(
    N: int,
    Jx: Sequence[float],
    Jy: Sequence[float],
    Jz: Sequence[float],
    h: Sequence[float],
) -> SparsePauliOp:
    """
    長さ N の一次元ハイゼンベルグ模型ハミルトニアンを生成する関数。
    各ボンド i=0..N-2 に対して結合強度 Jx[i], Jy[i], Jz[i] を、
    各サイト i=0..N-1 に対して磁場強度 h[i] を適用します。
    Little Endian 形式で、文字列の右端が qubit 0 に対応します。

    H = sum_{i=1}^{N-1}(Jx_i X_iX_{i+1} + Jy_i Y_iY_{i+1} + Jz_i Z_iZ_{i+1})
      + sum_{i=1}^{N} h_i Z_i

    使用例:
    -----------
    N = 5
    # ボンドごとの Jx, Jy, Jz（長さ N-1 = 4）
    Jx = [1.0, 0.8, 0.6, 0.4]
    Jy = [1.0, 0.8, 0.6, 0.4]
    Jz = [1.0, 0.8, 0.6, 0.4]
    # サイトごとの磁場 h（長さ N = 5）
    h  = [0.5, 0.4, 0.3, 0.2, 0.1]

    H = get_hamil(N, Jx, Jy, Jz, h)
    -----------
    """

    if not (len(Jx) == len(Jy) == len(Jz) == N - 1):
        raise ValueError("Jx, Jy, Jz は長さ N-1 のシーケンスである必要があります。")
    if len(h) != N:
        raise ValueError("h は長さ N のシーケンスである必要があります。")

    pauli_list = []

    # 相互作用項
    for i in range(N - 1):
        # 基底はすべて I
        base = ["I"] * N

        # X_i X_{i+1}
        ops = base.copy()
        ops[N - 1 - i], ops[N - 1 - (i + 1)] = "X", "X"
        pauli_list.append(("".join(ops), Jx[i]))

        # Y_i Y_{i+1}
        ops = base.copy()
        ops[N - 1 - i], ops[N - 1 - (i + 1)] = "Y", "Y"
        pauli_list.append(("".join(ops), Jy[i]))

        # Z_i Z_{i+1}
        ops = base.copy()
        ops[N - 1 - i], ops[N - 1 - (i + 1)] = "Z", "Z"
        pauli_list.append(("".join(ops), Jz[i]))

    # 磁場項
    for i in range(N):
        ops = ["I"] * N
        ops[N - 1 - i] = "Z"
        pauli_list.append(("".join(ops), h[i]))

    H = SparsePauliOp.from_list(pauli_list)
    return H


import numpy as np
from scipy.sparse.linalg import expm_multiply


def measure_zexp_exact(
    nqubits: int,
    H: SparsePauliOp,
    t: float,
) -> float:
    """
    ハミルトニアン H に従い初期状態 |0…0> を時間発展させ、
    qubit 0 の Z 期待値を計算する関数。

    Args:
        nqubits (int): 量子ビットの数
        H (SparsePauliOp): ハミルトニアン
        t (float): 時間発展させる時間

    Returns:
        float: qubit 0 の Z 期待値
    """
    H_mat = H.to_matrix(sparse=True)

    # 初期状態 |0...0> を作成
    dim = 2**nqubits
    psi0 = np.zeros(dim, dtype=complex)
    psi0[0] = 1.0

    # 状態ベクトルを時間発展
    psi_t = expm_multiply(-1j * H_mat * t, psi0)

    # qubit 0 の測定確率を計算
    prob_0 = np.abs(psi_t[0]) ** 2
    prob_1 = 1 - prob_0

    # qubits 0 の Z 期待値を計算
    z_exp = prob_0 * 1 + prob_1 * (-1)

    return z_exp
