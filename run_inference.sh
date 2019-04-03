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
export CUDA_VISIBLE_DEVICES=0
python main.py \
    --skip_validation \
    --skip_train \
    --inference \
    --no_loss \
    --save_flow \
    --model FlowNet2 \
    --inference_dataset HEVI \
    --inference_dataset_root ../fvl2019icra-keras/data \
    --inference_size 256 128 \
    --resume checkpoints/FlowNet2_checkpoint.pth.tar
