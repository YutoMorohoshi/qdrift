"""Script to compile circuits for Qdrift."""

import os
import sys

# qdrift ディレクトリの絶対パスを sys.path に追加
sys.path.append(os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'qdrift')))

from lib.tool_box import args_parse, get_backend, get_save_dir
import configparser
import json
import multiprocessing as mp
import time
import argparse
from qiskit.compiler import transpile
from qiskit.qasm3 import dump, load


def transpile_circuits(index, backend, end_path):
    """Compile circuits for Qdrift.
    Args:
        index (int): Circuit index.
        backend (Backend): Backend to compile the circuit.
        seed (int): Random seed for circuit preparation.
        save_dir (str): Directory to save the compiled circuits.
    """

    # トランスパイル前の回路を読み込み
    circ = load(f"{end_path}/circuit{index}.qasm")
    # カスタムゲート (PauliEvolutionGate) をデフォルトの基礎ゲートに展開
    circ = circ.decompose()

    isa_circ = transpile(circ, backend=backend)
    print(f"transpiling circuit {index}...")

    # トランスパイル後の回路図を保存
    isa_circ.draw("mpl", fold=-1, filename=f"{end_path}/transpiled_circuit{index}.pdf")

    # トランスパイル後の回路を QASM 形式で保存
    with open(f"{end_path}/transpiled_circuit{index}.qasm", "w") as f:
        dump(isa_circ, f)


def transpile_circuits_wrapper(args):
    """Wrapper function for multiprocessing."""
    return transpile_circuits(*args)


if __name__ == "__main__":
    # コマンドライン引数の解析
    parser = argparse.ArgumentParser(description="Compile circuits for Qdrift.")
    mode, seed, num_steps = args_parse(parser)

    # 設定ファイル (config.ini) の読み込み
    config = configparser.ConfigParser()
    config_path = os.path.join(os.path.dirname(__file__), "config.ini")
    config.read(config_path)
    num_times = json.loads(config["DEFAULT"]["num_times"])

    # 保存先ディレクトリの取得
    save_dir = get_save_dir(config, mode)

    # 回路の保存先となる末端のパス
    end_path = f"{save_dir}/num_steps{num_steps}/seed{seed}"

    # ディレクトリが存在していなくても作成
    os.makedirs(end_path, exist_ok=True)

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
            [(i, backend, end_path) for i in range(num_times)],
        )
    end = time.time()
    print(f"Elapsed time to transpile {num_times} circuits: {(end - start):.2f} sec")
