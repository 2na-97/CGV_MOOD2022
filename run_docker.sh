#!/bin/bash
./build.sh
docker run --gpus '"device=0"' -v /home/cgv/MOOD2021/dataset/abdom_toy/toy:/mnt/data -v /home/cgv/MOOD2021/MOOD_CGV/:/mnt/pred --read-only mood_test:latest /workspace/run_sample_abdom.sh /mnt/data /mnt/pred