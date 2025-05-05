"""Script to submit circuits to backend."""

from lib.tool_box import args_parse, get_save_dir, get_backend
from lib.qdrift import Qdrift
import matplotlib
import os
import sys
import configparser
import json
import multiprocessing as mp
import numpy as np
import argparse
from qiskit.compiler import transpile
from qiskit_ibm_runtime.fake_provider import FakeFez
from qiskit_ibm_runtime import (
    Batch,
    SamplerV2 as Sampler,
)
from qiskit.qasm3 import dump, load
from qiskit.circuit import Gate


def run_circuits(index, backend, end_path):
    """Run circuits for Qdrift.
    Args:
        index (int): Circuit index.
        backend (Backend): Backend to run the circuit.
        end_path (str): A leaf (end) path to save the results.
    """

    # トランスパイル後の回路を読み込み
    circ = load(f"{end_path}/transpiled_circuit{index}.qasm").decompose()

    # 回路を実行
    job = backend.run(circ)
    print(f"Running circuit {index}...")

    # 結果を保存
    result = job.result()
    print(f"Finished running circuit {index}...")

    # 測定結果のカウントを取得
    meas_counts = result.get_counts()
    print(f"Measurement counts for circuit {index}: {meas_counts} +\n")

    # Z 期待値と標準偏差を計算
    prob_0 = meas_counts.get("0", 0) / sum(meas_counts.values())
    prob_1 = meas_counts.get("1", 0) / sum(meas_counts.values())
    z_exp = prob_0 * 1 + prob_1 * (-1)
    z_std = np.sqrt(prob_0 * prob_1 / sum(meas_counts.values()))

    # 一時ファイルに保存
    with open(f"{end_path}/result{index}.json", "w") as f:
        json.dump(
            dict(index=index, meas_counts=meas_counts, z_exp=z_exp, z_std=z_std),
            f,
            indent=4,
        )


def run_circuits_wrapper(args):
    """Wrapper function for multiprocessing."""
    return run_circuits(*args)


if __name__ == "__main__":
    # コマンドライン引数の解析
    parser = argparse.ArgumentParser(description="Run circuits for Qdrift.")
    mode, seed, num_steps = args_parse(parser)

    # 設定ファイル (config.ini) の読み込み
    config = configparser.ConfigParser()
    config.read("qdrift_pai/config.ini")
    is_qpu = config.getboolean("DEFAULT", "is_qpu")
    num_times = json.loads(config["DEFAULT"]["num_times"])

    # 保存先ディレクトリの取得
    save_dir = get_save_dir(config, mode)

    # 回路の保存先となる末端のパス
    end_path = f"{save_dir}/num_steps{num_steps}/seed{seed}"

    # ディレクトリが存在していなくても作成
    os.makedirs(end_path, exist_ok=True)

    # バックエンドの設定
    backend = get_backend(config)
    print(f"Backend: {backend}")

    if is_qpu:  # For QPU, just submit the job
        with Batch(backend=backend) as batch:
            pass
            ##### To Do: fix for batch mode #####
            # sampler = Sampler(mode=batch)

            # # For QPU, this will just submit the job
            # job = sampler.run(isa_circs)

            # job_id = job.job_id()
            # print(f"Job ID: {job_id}")
            # # Save job ID to a file
            # with open(f"{save_dir}/job_ids.txt", "w") as f:
            #     f.write(job_id)
            # print(f"Job ID saved to {save_dir}/job_ids.txt")
            #####################################
    else:  # For simulator, run circuits and fetch results
        with mp.Pool(mp.cpu_count()) as p:
            # run circuits and fetch results in parallel
            p.map(
                run_circuits_wrapper,
                [(i, backend, end_path) for i in range(num_times)],
            )

        # 結果をまとめる
        all_results = []
        for i in range(num_times):
            with open(f"{end_path}/result{i}.json", "r") as f:
                result = json.load(f)
                all_results.append(result)

        # 結果を保存
        with open(f"{end_path}/result.json", "w") as f:
            json.dump(all_results, f, indent=4)

        # 一時ファイルを削除
        for i in range(num_times):
            os.remove(f"{end_path}/result{i}.json")
