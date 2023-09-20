#!/bin/bash
# debug_mode="-m debugpy --listen 127.0.0.1:6679 --wait-for-client"
# python -m torch.distributed.run --nproc_per_node=1 ${debug_mode} src/xxxx.py # example for debug with deepspeed
# CUDA_VISIBLE_DEVICES=0,1,2 accelerate launch --multi_gpu --mixed_precision=bf16 --main_process_port 26074 ${debug_mode} ./src/xxx.py # example for debug with accelerate

python ${debug_mode} src/hello.py