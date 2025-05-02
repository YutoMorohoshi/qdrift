"""Script to prepare circuits for Qdrift."""

from lib.tool_box import validate_args, get_hamil, get_save_dir
from lib.qdrift import Qdrift
import matplotlib
import os
import sys
import configparser
import json
import numpy as np
import multiprocessing as mp
import time
from qiskit.qasm3 import dump

matplotlib.use("Agg")  # Use a non-interactive backend for saving figures


def prepare_circuits(index, hamil, t, seed, num_steps, save_dir):
    """Prepare circuits for Qdrift.
    Args:
        index (int): Circuit index.
        hamil (SparsePauliOp): Hamiltonian.
        t (float): Evolution time.
        nstep (int): Number of steps.
        save_dir (str): Directory to save the circuits.
    """
    qdrift = Qdrift(hamil, t, seed, num_steps)
    circ = qdrift.get_circuit()

    # 回路図を保存。発展時間のみが表示され、パウリの係数は表示されないことに注意。
    # See: https://docs.quantum.ibm.com/api/qiskit/qiskit.circuit.library.PauliEvolutionGate
    # -> (note that the -0.1 coefficient is not printed!)
    circ.draw("mpl", fold=-1, filename=f"{save_dir}/circuit{index}.pdf")

    # QASM 形式で保存
    with open(f"{save_dir}/circuit{index}.qasm", "w") as f:
        dump(circ, f)


def prepare_circuits_wrapper(args):
    """Wrapper function for multiprocessing."""
    return prepare_circuits(*args)


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

    nqubits = json.loads(config["DEFAULT"]["nqubits"])
    Jx = json.loads(config["DEFAULT"]["Jx"])
    Jy = json.loads(config["DEFAULT"]["Jy"])
    Jz = json.loads(config["DEFAULT"]["Jz"])
    h = json.loads(config["DEFAULT"]["h"])
    all_time = json.loads(config["DEFAULT"]["all_time"])
    num_times = json.loads(config["DEFAULT"]["num_times"])
    num_steps = json.loads(config["DEFAULT"]["num_steps"])
    seed = json.loads(config["DEFAULT"]["seed"])

    hamil = get_hamil(nqubits, Jx, Jy, Jz, h)
    # t=0 を除き、正の float のみを生成する
    times = np.linspace(all_time / num_times, all_time, num_times)

    # プールをコンテキストマネージャで生成し、リソースを自動解放
    start = time.time()
    with mp.Pool(mp.cpu_count()) as p:
        # Prepare circuits in parallel
        p.map(
            prepare_circuits_wrapper,
            [(i, hamil, t, seed, num_steps, save_dir) for i, t in enumerate(times)],
        )
    end = time.time()
    print(f"Elapsed time to prepare circuits: {end - start:.2f} sec")
