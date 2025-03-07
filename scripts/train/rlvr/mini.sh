python open_instruct/ppo_vllm_thread_ray_gtrl.py \
    --dataset_mixer_list allenai/RLVR-GSM 1.0 \
    --dataset_mixer_list_splits train \
    --dataset_mixer_eval_list allenai/RLVR-GSM 16 \
    --dataset_mixer_eval_list_splits train \
    --max_token_length 1023 \
    --max_prompt_token_length 1024 \
    --response_length 1024 \
    --model_name_or_path HuggingFaceTB/SmolLM-135M-Instruct \
    --reward_model_path HuggingFaceTB/SmolLM-135M-Instruct \
    --non_stop_penalty \
    --stop_token eos \
    --temperature 1.0 \
    --ground_truths_key ground_truth \
    --chat_template tulu \
    --sft_messages_key messages \
    --learning_rate 3e-7 \
    --total_episodes 10000 \
    --penalty_reward_value -10.0 \
    --deepspeed_stage 3 \
    --per_device_train_batch_size 1 \
    --local_rollout_forward_batch_size 1 \
    --local_mini_batch_size 4 \
    --local_rollout_batch_size 4 \
    --num_epochs 1 \
    --actor_num_gpus_per_node 1 \
    --vllm_tensor_parallel_size 1 \
    --beta 0.05 \
    --apply_verifiable_reward true \
    --output_dir output/rlvr_1b \
    --seed 3 \
    --num_evals 3 \
    --save_freq 100 \
    --reward_model_multiplier 0.0 \
    --gradient_checkpointing \
    --vllm_enforce_eager \
    --with_tracking