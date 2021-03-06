#!/bin/bash
work_path=$(dirname $0)
ITER=$1
python -m torch.distributed.launch --nproc_per_node=8 main.py
    --config $work_path/config.yaml --launcher pytorch \
    --load-iter $ITER --validate
