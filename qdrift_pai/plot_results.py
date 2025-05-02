from lib.tool_box import validate_args, get_hamil, get_save_dir
from lib.qdrift import Qdrift
import matplotlib
import matplotlib.pyplot as plt
import os
import sys
import configparser
import json
import numpy as np
import multiprocessing as mp
import time
from qiskit.qasm3 import dump

matplotlib.use("Agg")  # Use a non-interactive backend for saving figures

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
    save_dir_exact = get_save_dir(config, "EXACT")

    nqubits = json.loads(config["DEFAULT"]["nqubits"])
    Jx = json.loads(config["DEFAULT"]["Jx"])
    Jy = json.loads(config["DEFAULT"]["Jy"])
    Jz = json.loads(config["DEFAULT"]["Jz"])
    h = json.loads(config["DEFAULT"]["h"])
    all_time = json.loads(config["DEFAULT"]["all_time"])
    num_times = json.loads(config["DEFAULT"]["num_times"])
    num_steps = json.loads(config["DEFAULT"]["num_steps"])

    hamil = get_hamil(nqubits, Jx, Jy, Jz, h)
    # t=0 を除き、正の float のみを生成する
    times = np.linspace(all_time / num_times, all_time, num_times)

    # 結果を load
    with open(f"{save_dir}/result.json", "r") as f:
        result_qdrift = json.load(f)
    with open(f"{save_dir_exact}/result.json", "r") as f:
        result_exact = json.load(f)

    # 結果をプロット
    plt.errorbar(
        times,
        [r["z_exp"] for r in result_qdrift],
        yerr=[r["z_std"] for r in result_qdrift],
        fmt="o",
        # linestyle="-",
        label="Qdrift",
        color="blue",
    )
    plt.plot(
        times,
        result_exact["Z_exps"],
        marker="^",
        # linestyle="-",
        label="Exact",
        color="red",
    )
    plt.xlabel("Time")
    plt.ylabel(r"$\langle$ Z $\rangle$")
    plt.legend()
    plt.savefig(f"{save_dir}/times_vs_Zexp.pdf")
