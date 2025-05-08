import os
import sys

# qdrift ディレクトリの絶対パスを sys.path に追加
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'qdrift')))


from lib.tool_box import args_parse, get_hamil, get_save_dir
from lib.qdrift import Qdrift
import matplotlib
import matplotlib.pyplot as plt
import configparser
import json
import numpy as np
import multiprocessing as mp
import time
import argparse
from qiskit.qasm3 import dump

matplotlib.use("Agg")  # Use a non-interactive backend for saving figures

if __name__ == "__main__":
    # コマンドライン引数の解析
    parser = argparse.ArgumentParser(description="Plot results for Qdrift.")
    mode, seeds, nums_steps = args_parse(parser)  # seeds, nums_steps は配列

    # 設定ファイル (config.ini) の読み込み
    config = configparser.ConfigParser()
    config_path = os.path.join(os.path.dirname(__file__), "config.ini")
    config.read(config_path)

    # 保存先ディレクトリの取得
    data_dir = os.path.abspath(get_save_dir(config, mode))
    data_dir_exact = os.path.abspath(get_save_dir(config, "EXACT"))
    save_dir = os.path.abspath(get_save_dir(config, None))
    all_time = json.loads(config["DEFAULT"]["all_time"])
    num_times = json.loads(config["DEFAULT"]["num_times"])
    # t=0 を除き、正の float のみを生成する
    times = np.linspace(all_time / num_times, all_time, num_times)

    # 結果をプロット
    for num_steps in nums_steps:
        total_results = []
        for seed in seeds:
            end_path = os.path.join(data_dir, f"num_steps{num_steps}", f"seed{seed}")
            # 結果を読み込み
            with open(os.path.join(end_path, "result.json"), "r") as f:
                result = json.load(f)

            total_results.append(result)
        # 結果を平均化
        results_per_batch = []  # 各バッチ (num_steps) ごとの結果
        for i in range(num_times):
            z_exps = [result[i]["z_exp"] for result in total_results]
            z_stds = [result[i]["z_std"] for result in total_results]
            z_exp = np.mean(z_exps)
            z_std = np.std(z_exps)
            results_per_batch.append({"z_exp": z_exp, "z_std": z_std})
        # 結果を保存
        os.makedirs(os.path.join(data_dir, f"num_steps{num_steps}"), exist_ok=True)
        with open(os.path.join(data_dir, f"num_steps{num_steps}", "results.json"), "w") as f:
            json.dump(results_per_batch, f, indent=4)

        # QDrift の結果をプロット
        plt.errorbar(
            times,
            [r["z_exp"] for r in results_per_batch],
            yerr=[r["z_std"] for r in results_per_batch],
            fmt="o",
            label=f"QDrift (num_steps={num_steps})",
        )

    # exact の結果をプロット
    with open(os.path.join(data_dir_exact, "result.json"), "r") as f:
        result_exact = json.load(f)
    plt.scatter(
        times,
        result_exact["Z_exps"],
        c="red",
        marker="o",
        label="Exact",
    )

    plt.xlabel("Time")
    plt.ylabel(r"$\langle Z_0 \rangle$")
    plt.legend()
    os.makedirs(save_dir, exist_ok=True)
    plt.savefig(os.path.join(save_dir, "times_vs_Z0.pdf"))
    print(f"Saved {os.path.join(save_dir, 'times_vs_Z0.pdf')}")
