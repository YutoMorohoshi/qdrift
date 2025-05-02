#!/bin/bash

python qdrift_pai/exact_calc.py
python qdrift_pai/prepare_circuits.py QDRIFT
python qdrift_pai/transpile_circuits.py QDRIFT
python qdrift_pai/run_circuits.py QDRIFT
python qdrift_pai/plot_results.py QDRIFT