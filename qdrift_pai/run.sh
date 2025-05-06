#!/bin/bash

start=$(date +%s)

# Exact calculation
python qdrift_pai/exact_calc.py

nums_steps=(10 100 1000)

# 作成するシードの数
num_seeds=5
# シードを作るためのシード
RANDOM=42

# Generate seeds
seeds=()
for ((i=0; i<$num_seeds; i++)); do
    seeds+=($RANDOM)    # 0 から $((2**15-1)) の範囲のランダムな整数を生成
done

for num_steps in "${nums_steps[@]}"; do
    printf "num_steps %d\n" "$num_steps"
    for seed in "${seeds[@]}"; do
        printf "Running QDRIFT with seed %d\n" "$seed"
        python qdrift_pai/prepare_circuits.py QDRIFT --seeds "$seed" --num_steps "$num_steps"
        python qdrift_pai/transpile_circuits.py QDRIFT --seeds "$seed" --num_steps "$num_steps"
        python qdrift_pai/run_circuits.py QDRIFT --seeds "$seed" --num_steps "$num_steps"
    done
done

# Plot results
python qdrift_pai/plot_results.py QDRIFT --seeds "${seeds[@]}" --num_steps "${nums_steps[@]}"

end=$(date +%s)
echo "Elapsed time: $((end - start)) seconds"
