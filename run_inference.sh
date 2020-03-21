#export CUDA_VISIBLE_DEVICES=0
#python main.py \
#    --skip_validation \
#    --skip_train \
#    --inference \
#    --no_loss \
#    --save_flow \
#    --model FlowNet2 \
#    --inference_dataset TaiwanSA \
#    --inference_dataset_root data/taiwan_sa/testing \
#    --inference_size 320 192 \
#    --resume checkpoints/FlowNet2_checkpoint.pth.tar
# export CUDA_VISIBLE_DEVICES=0
# python main.py \
#     --skip_validation \
#     --skip_train \
#     --inference \
#     --no_loss \
#     --save_flow \
#     --number_workers 0 \
#     --model FlowNet2 \
#     --inference_dataset HEVI \
#     --inference_dataset_root /u/bryao/work/DATA/HEVI_dataset/ \
#     --inference_size 384 192 \
#     --resume checkpoints/FlowNet2_checkpoint.pth.tar
export CUDA_VISIBLE_DEVICES=0 #0,2,3
python main.py \
    --skip_validation \
    --skip_train \
    --inference \
    --no_loss \
    --save_flow \
    --save /u/bryao/work/DATA/A3D_2.0/flownet2/ \
    --number_workers 0 \
    --model FlowNet2 \
    --inference_dataset A3D \
    --inference_dataset_root /home/data/vision7/A3D_2.0/ \
    --inference_size 384 192 \
    --inference_batch_size 1 \
    --number_gpus 1 \
    --resume checkpoints/FlowNet2_checkpoint.pth.tar
