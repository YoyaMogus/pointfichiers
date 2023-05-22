#! /bin/sh
#echo $(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33)

GPU1=$(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33 | head -n 1 | tail -n 1)
GPU2=$(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33 | head -n 2 | tail -n 1)
GPU3=$(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33 | head -n 3 | tail -n 1)
GPU4=$(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33 | head -n 4 | tail -n 1)
GPU5=$(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33 | head -n 5 | tail -n 1)
GPU6=$(nvidia-smi stats -d gpuUtil -c 1 | cut -b 32,33 | head -n 6 | tail -n 1)
GPUmoyenne=$((GPU1+GPU2+GPU3+GPU4+GPU5+GPU6))
GPUmoyenne=$((GPUmoyenne/6))
echo $GPUmoyenne
