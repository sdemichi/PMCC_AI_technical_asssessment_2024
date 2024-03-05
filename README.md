# PMCC_AI_technical_asssessment_2024
This is the project directory for ongoing analyses in the technical assessment for the Computational Biology role as a part of the PMCC AI team at UHN. I enjoyed working on this project, and will continue to update results as they become available. Will incorporate as a finished product in my portfolio once complete.

## 1. Environment setup

Environment setup was performed according to instructions from https://github.com/jerryji1993/DNABERT. To run the Jupyter Notebook script without issues, I recommend cloning the Conda environment from PMCC_AI_technical_asssessment_2024/model_repos/DNABERT/dnabert_conda_environment.txt. From there, follow the steps highlighted in the Jupyter Notebook.

```
conda create --name dnabert --file dnabert_conda_environment.txt
```

While the first environment was used to generate project visualizations and run DNABERT, the second was an attempt to initialize DNABERT-2 for predicting cell type signatures from DHSs. Instructions to implement this workflow are available from https://github.com/MAGICS-LAB/DNABERT_2. To use this environment, clone the conda environment from PMCC_AI_technical_asssessment_2024/model_repos/DNABERT-2/dnabert2_conda_environment.txt.

```
conda create --name dnabert2 --file dnabert2_conda_environment.txt
```
