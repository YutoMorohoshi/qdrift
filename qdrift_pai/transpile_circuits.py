"""Script to compile circuits for Qdrift."""

from lib.tool_box import validate_args, get_backend, get_save_dir
import os
import sys
import configparser
import json
import multiprocessing as mp
import time
from qiskit.compiler import transpile
from qiskit.qasm3 import dump, load


def transpile_circuits(index, backend, save_dir):
    """Compile circuits for Qdrift.
    Args:
        index (int): Circuit index.
        backend (Backend): Backend to compile the circuit.
        save_dir (str): Directory to save the compiled circuits.
    """
    # トランスパイル前の回路を読み込み
    circ = load(f"{save_dir}/circuit{index}.qasm")
    # カスタムゲート (PauliEvolutionGate) をデフォルトの基礎ゲートに展開
    circ = circ.decompose()

    isa_circ = transpile(circ, backend=backend)
    print(f"transpiling circuit {index}...")

    # トランスパイル後の回路図を保存
    isa_circ.draw("mpl", fold=-1, filename=f"{save_dir}/transpiled_circuit{index}.pdf")

    # トランスパイル後の回路を QASM 形式で保存
    with open(f"{save_dir}/transpiled_circuit{index}.qasm", "w") as f:
        dump(isa_circ, f)


def transpile_circuits_wrapper(args):
    """Wrapper function for multiprocessing."""
    return transpile_circuits(*args)


if __name__ == "__main__":
    args = sys.argv
    # コマンドライン引数の確認
    validate_args(args)
    mode = args[1]

    # 設定ファイル (config.ini) の読み込み
    config = configparser.ConfigParser()
    config.read("qdrift_pai/config.ini")

    # 保存先ディレクトリの取得
    save_dir = get_save_dir(config, mode)

    if not os.path.exists(save_dir):
        os.makedirs(save_dir)

    num_times = json.loads(config["DEFAULT"]["num_times"])

    # バックエンドの設定
    start = time.time()
    backend = get_backend(config)
    end = time.time()
    print(f"Elapsed time to get backend: {(end - start):.2f} sec")

    # プールをコンテキストマネージャで生成し、リソースを自動解放
    start = time.time()
    with mp.Pool(mp.cpu_count()) as p:
        # Compile circuits in parallel
        p.map(
            transpile_circuits_wrapper,
            [(i, backend, save_dir) for i in range(num_times)],
        )
    end = time.time()
    print(f"Elapsed time to transpile circuits: {(end - start):.2f} sec")
