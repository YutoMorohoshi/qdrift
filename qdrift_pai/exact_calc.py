from lib.tool_box import validate_args, get_hamil, get_save_dir, measure_zexp_exact
from lib.qdrift import Qdrift
import matplotlib
import matplotlib.pyplot as plt
import configparser
import sys
import os
import json
import numpy as np

matplotlib.use("Agg")  # Use a non-interactive backend for saving figures

if __name__ == "__main__":
    # 設定ファイル (config.ini) の読み込み
    config = configparser.ConfigParser()
    config.read("qdrift_pai/config.ini")

    # 保存先ディレクトリの取得
    save_dir = get_save_dir(config, "EXACT")

    if not os.path.exists(save_dir):
        os.makedirs(save_dir)

    nqubits = json.loads(config["DEFAULT"]["nqubits"])
    Jx = json.loads(config["DEFAULT"]["Jx"])
    Jy = json.loads(config["DEFAULT"]["Jy"])
    Jz = json.loads(config["DEFAULT"]["Jz"])
    h = json.loads(config["DEFAULT"]["h"])
    all_time = json.loads(config["DEFAULT"]["all_time"])
    num_times = json.loads(config["DEFAULT"]["num_times"])

    H = get_hamil(nqubits, Jx, Jy, Jz, h)
    # t=0 を除き、正の float のみを生成する
    times = np.linspace(all_time / num_times, all_time, num_times)

    Z_exps = [measure_zexp_exact(nqubits, H, t) for t in times]

    # save results
    with open(f"{save_dir}/result.json", "w") as f:
        json.dump(dict(Z_exps=Z_exps), f, indent=4)

    # # plot
    # plt.plot(times, Z_exps, marker="o", linestyle="-")
    # plt.xlabel("Time")
    # plt.ylabel(r"$\langle$ Z $\rangle$")
    # plt.savefig(f"{save_dir}/prob_0s.pdf")
