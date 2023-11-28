export CUDA_VISIBLE_DEVICES=0
python train_deep_globe.py \
--n_class 7 \
--data_path "/root/autodl-tmp/GLNet-master/dataset/" \
--model_path "/root/autodl-tmp/GLNet-master/saved_models/" \
--log_path "/root/autodl-tmp/GLNet-master/runs/" \
--task_name "fpn_deepglobe_local2global" \
--mode 3 \
--batch_size 2 \
--sub_batch_size 6 \
--size_g 508 \
--size_p 508 \
--path_g "fpn_deepglobe_global.pth" \
--path_g2l "fpn_deepglobe_global2local.pth" \