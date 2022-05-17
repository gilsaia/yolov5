python train.py --data coco128.yaml --cfg yolov5n.yaml --batch-size 36 --epochs 20 --name coco128  --optimizer AdamW --device 0

python -m torch.distributed.launch --nproc_per_node=1 train.py --data coco128.yaml --cfg yolov5n.yaml --batch-size 36 --epochs 20 --name coco128  --optimizer AdamW --device 0

horovodrun -np 2 -H localhost:2 python train.py --data coco128.yaml --cfg yolov5n.yaml --batch-size 36 --epochs 20 --name coco128  --optimizer AdamW --device 0

horovodrun -np 8 -H localhost:2,172.17.0.2:2,172.17.0.3:2,172.17.0.4:2 -p 12345 python train.py --data coco.yaml --cfg yolov5n.yaml --batch-size 36 --epochs 100 --name coco  --optimizer AdamW --device 0
