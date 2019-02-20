export CUDA_VISIBLE_DEVICES=0
python main.py \
    --skip_validation \
    --skip_train \
    --inference \
    --no_loss \
    --save_flow \
    --model FlowNet2 \
    --inference_dataset A3D \
    --inference_dataset_root /data/A3D/ \
    --inference_size 320 192 \
    --resume checkpoints/FlowNet2_checkpoint.pth.tar
