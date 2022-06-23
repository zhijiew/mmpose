from mmpose.apis import init_pose_model

config = '../configs/hand/2d_kpt_sview_rgb_img/topdown_heatmap/onehand10k/mobilenetv2_sss_0.5_pretrain.py'
checkpoint = '../work_dirs/sss_0.5_pretrain/epoch_210.pth'

model = init_pose_model(config, checkpoint, device='cuda:0')
print(model)
