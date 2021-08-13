#!/bin/bash

. rlqp-venv/bin/activate
num_cpus=$(nproc)
export PYTHONPATH=$PWD/spinningup
export OMP_NUM_THREADS=1
export LD_LIBRARY_PATH=$PWD/rlqp-venv/lib/python3.6/site-packages/torch/lib

python osqp_rl.py \
   	--vec \
   	--mode benchmarks \
   	--num_cpus $num_cpus \
   	--epochs 25 \
   	--hidden_size 48 \
   	--hidden_layers 3 \
   	--high_accuracy \
   	--max_ep_len 1000 \
   	--exp_name experiments/benchmarks-n48xx3 \
   	--replay_size   1000000000 \
   	--start_steps	100000 \
   	--update_after	10000 \
   	--update_every	10000 \
   	--batch_size  	1000 \
   	--steps_per_epoch 50000 \
   	--iterations_per_step 100 \
   	--obs_mode 6 \
   	--pi_lr 1e-5 \
   	--q_lr 1e-5 \
   	--act_noise 2.0 > train_benchmark_problems.log
