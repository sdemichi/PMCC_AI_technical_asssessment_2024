cd /path/to/DNABERT_2/finetune

# path to train and test data for DNABERT-2
export DATA_PATH=/path/to/datasets/dnabert_2_train_test

# GUE test data was used as input, to ensure the script is working as required
# export DATA_PATH=/path/to/datasets/GUE/EMP/H3

export MAX_LENGTH=150 # Please set the number as 0.25 * your sequence length. 
											# e.g., set it as 250 if your DNA sequences have 1000 nucleotide bases
											# This is because the tokenized will reduce the sequence length by about 5 times
export LR=1e-4

# Training use DataParallel
python train.py \
    --model_name_or_path /path/to/datasets/dnabert_2_model/ \
    --data_path  ${DATA_PATH} \
    --kmer -1 \
    --run_name DNABERT2_${DATA_PATH} \
    --model_max_length ${MAX_LENGTH} \
    --per_device_train_batch_size 2 \ # adjusted since no GPUs were used
    --per_device_eval_batch_size 4 \ # same as above
    --gradient_accumulation_steps 1 \
    --learning_rate ${LR} \
    --fp16 \ # can only be used on CUDA devices
    --num_train_epochs 5 \
    --save_steps 200 \
    --output_dir output/dnabert2 \
    --evaluation_strategy steps \
    --eval_steps 200 \
    --warmup_steps 50 \
    --logging_steps 100 \
    --overwrite_output_dir True \
    --log_level info \
    --find_unused_parameters False
