# model fine tuning on training data (tokenized_seq). Code from https://github.com/jerryji1993/DNABERT?tab=readme-ov-file
export KMER=6
export MODEL_PATH='/path/to/datasets/6-new-12w-0/'
export DATA_PATH='/path/to/datasets/tokenized_seq_training.txt'
export OUTPUT_PATH='path/to/datasets/finetuned_model/'

# Fine-tune the model. Parameters adjusted according to the resources allocated to the job.
python /path/to/DNABERT/examples/run_finetune.py \
    --model_type dna \
    --tokenizer_name=dna$KMER \
    --model_name_or_path $MODEL_PATH \
    --task_name dnaprom \
    --do_train \
    --do_eval \
    --data_dir $DATA_PATH \
    --max_seq_length 100 \
    --per_gpu_eval_batch_size=8 \
    --per_gpu_train_batch_size=8 \
    --learning_rate 1e-4 \
    --num_train_epochs 3.0 \
    --output_dir $OUTPUT_PATH \
    --evaluate_during_training \
    --logging_steps 1000 \
    --save_steps 2000 \
    --warmup_percent 0.05 \
    --hidden_dropout_prob 0.05 \
    --overwrite_output \
    --weight_decay 0.001 \
    --n_process 8
