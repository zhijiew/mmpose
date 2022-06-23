pct=1.0

python demo/top_down_img_demo.py \
    configs/hand/2d_kpt_sview_rgb_img/topdown_heatmap/onehand10k/mobilenetv2_sss_${pct}_pretrain.py \
    work_dirs/sss_${pct}_pretrain/epoch_210.pth \
    --img-root ~/datasets/SonyAI/key_point_05/val/ \
    --json-file ~/datasets/SonyAI/key_point_05/annotations/val.json \
    --out-img-root vis_results_sss_${pct}

