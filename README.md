# PMCC_AI_technical_asssessment_2024
This is the project directory for ongoing analyses in the technical assessment for the Computational Biology role as a part of the PMCC AI team at UHN. I enjoyed working on this project, and will continue to update results as they become available. I will incorporate as a finished product in my portfolio once complete.

## Project Background
Deep learning models have demonstrated promise in discovery of novel cis-regulatory patterns from DNA sequences(Kelley et al. 2016; Li et al. 2023). Foundation models have recently expanded on this repertoire of tools. One example is DNABERT(Ji et al. 2021), a transformer model capable of considering the context of surrounding DNA sequences for cis-regulatory element prediction, demonstrating accuracy and efficiency of prediction of genome-wide regulatory elements.

The goal of this project was to utilize the pre-trained model (DNABERT-6) for fine tuning and prediction of the regulatory programs from Meuleman et al.(Meuleman et al. 2020), to establish whether the underlying DHS sequences can be used to classify the samples into the 16 established signatures.

## 1. Environment setup

Environment setup was performed according to instructions from https://github.com/jerryji1993/DNABERT. To run the Jupyter Notebook script without issues, I recommend cloning the Conda environment from PMCC_AI_technical_asssessment_2024/model_repos/DNABERT/dnabert_conda_environment.txt. From there, follow the steps highlighted in the Jupyter Notebook.

```
conda create --name dnabert --file dnabert_conda_environment.txt
```

While the first environment was used to generate project visualizations and run DNABERT, the second was an attempt to initialize DNABERT-2 for predicting cell type signatures from DHSs. Instructions to implement this workflow are available from https://github.com/MAGICS-LAB/DNABERT_2. To use this environment, clone the conda environment from PMCC_AI_technical_asssessment_2024/model_repos/DNABERT-2/dnabert2_conda_environment.txt.

```
conda create --name dnabert2 --file dnabert2_conda_environment.txt
```
