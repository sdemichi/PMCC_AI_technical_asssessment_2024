# PMCC_AI_technical_asssessment_2024
This is the project directory for ongoing analyses in the technical assessment for the Computational Biology role as a part of the PMCC AI team at UHN. I enjoyed working on this project, and will continue to update results as they become available. Will incorporate as a finished product in my portfolio once complete.

## 1. Environment setup

We recommend you to build a python virtual environment with [Anaconda](https://docs.anaconda.com/anaconda/install/linux/). Also, please make sure you have at least one NVIDIA GPU with Linux x86_64 Driver Version >= 410.48 (compatible with CUDA 10.0). We applied distributed training on 8 NVIDIA GeForce RTX 2080 Ti with 11 GB graphic memory, and the batch size corresponds to it. If you use GPU with other specifications and memory sizes, consider adjusting your batch size accordingly.

#### 1.1 Create and activate a new virtual environment

```
conda create -n dnabert python=3.6
conda activate dnabert
```
