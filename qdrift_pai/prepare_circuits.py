"""Script to prepare circuits for Qdrift."""

from lib.tool_box import args_parse, get_hamil, get_save_dir
from lib.qdrift import Qdrift
import matplotlib
import os
import sys
import configparser
import json
import numpy as np
import multiprocessing as mp
import time
import argparse
from numba import jit
from qiskit.qasm3 import dump

matplotlib.use("Agg")  # Use a non-interactive backend for saving figures


# @jit(nopython=True)
def prepare_circuits(index, hamil, t, seed, num_steps, end_path):
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
    circ.draw("mpl", fold=-1, filename=f"{end_path}/circuit{index}.pdf")

    # QASM 形式で保存
    with open(f"{end_path}/circuit{index}.qasm", "w") as f:
        dump(circ, f)


def prepare_circuits_wrapper(args):
    """Wrapper function for multiprocessing."""
    return prepare_circuits(*args)


if __name__ == "__main__":
    # コマンドライン引数の解析
    parser = argparse.ArgumentParser(description="Prepare circuits for Qdrift.")
    mode, seed, num_steps = args_parse(parser)

    # 設定ファイル (config.ini) の読み込み
    config = configparser.ConfigParser()
    config.read("qdrift_pai/config.ini")

    # 保存先ディレクトリの取得
    save_dir = get_save_dir(config, mode)

    # 回路の保存先となる末端のパス
    end_path = f"{save_dir}/num_steps{num_steps}/seed{seed}"

    # ディレクトリが存在していなくても作成
    os.makedirs(end_path, exist_ok=True)

    nqubits = json.loads(config["DEFAULT"]["nqubits"])
    Jx = json.loads(config["DEFAULT"]["Jx"])
    Jy = json.loads(config["DEFAULT"]["Jy"])
    Jz = json.loads(config["DEFAULT"]["Jz"])
    h = json.loads(config["DEFAULT"]["h"])
    all_time = json.loads(config["DEFAULT"]["all_time"])
    num_times = json.loads(config["DEFAULT"]["num_times"])

    hamil = get_hamil(nqubits, Jx, Jy, Jz, h)
    # t=0 を除き、正の float のみを生成する
    times = np.linspace(all_time / num_times, all_time, num_times)

    # プールをコンテキストマネージャで生成し、リソースを自動解放
    start = time.time()
    with mp.Pool(mp.cpu_count()) as p:
        # Prepare circuits in parallel
        p.map(
            prepare_circuits_wrapper,
            [(i, hamil, t, seed, num_steps, end_path) for i, t in enumerate(times)],
        )
    end = time.time()
    print(f"Elapsed time to prepare {num_times}: {end - start:.2f} sec")
