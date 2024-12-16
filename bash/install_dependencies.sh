#!/bin/bash


cuda_version_arg=$1

echo "Selected CUDA version: $cuda_version_arg"

# Check the passed CUDA version and install the appropriate PyTorch version
if [[ "$cuda_version_arg" == "11" ]]; then
    echo "Installing PyTorch 2.3.1 for CUDA 11.8..."
    pip install torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 --index-url https://download.pytorch.org/whl/cu118
elif [[ "$cuda_version_arg" == "12" ]]; then
    echo "Installing PyTorch 2.3.1 for CUDA 12.1..."
    pip install torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1 --index-url https://download.pytorch.org/whl/cu121
else
    echo "Invalid CUDA version argument. Please pass either '11' or '12'."
    exit 1
fi

cd ../ && wget https://developer.nvidia.com/isaac-gym-preview-4
tar -xvf isaac-gym-preview-4
rm -r  isaac-gym-preview-4
cd ./isaacgym/python && pip install -e . && cd ../../
cd ./rsl_rl && pip install -e . && cd ../
cd ./unitree_rl_gym && pip install -e . && cd ../
cd ./unitree_sdk2_python & pip install -e .


