docker run -i --rm -v /home/yuzhe/.wandb/.netrc:/root/.netrc -v /home/yuzhe/grace:/home/grace -v /home/yuzhe/data:/home/yuzhe/data -v /home/yuzhe/.hvd:/root/.ssh -e http_proxy=http://10.61.3.207:10809 -e https_proxy=http://10.61.3.207:10809 --ipc host --gpus '"device=0"' gilsaia/horovod_grace:t1 bash -c "/usr/sbin/sshd -p 12345; sleep infinity" &
sleep 2s
docker run -i --rm -v /home/yuzhe/.wandb/.netrc:/root/.netrc -v /home/yuzhe/grace:/home/grace -v /home/yuzhe/data:/home/yuzhe/data -v /home/yuzhe/.hvd:/root/.ssh -e http_proxy=http://10.61.3.207:10809 -e https_proxy=http://10.61.3.207:10809 --ipc host --gpus '"device=1"' gilsaia/horovod_grace:t1 bash -c "/usr/sbin/sshd -p 12345; sleep infinity" &
sleep 2s
docker run -i --rm -v /home/yuzhe/.wandb/.netrc:/root/.netrc -v /home/yuzhe/grace:/home/grace -v /home/yuzhe/data:/home/yuzhe/data -v /home/yuzhe/.hvd:/root/.ssh -e http_proxy=http://10.61.3.207:10809 -e https_proxy=http://10.61.3.207:10809 --ipc host --gpus '"device=2"' gilsaia/horovod_grace:t1 bash -c "/usr/sbin/sshd -p 12345; sleep infinity" &
sleep 2s
docker run --rm -it -v /home/yuzhe/.wandb/.netrc:/root/.netrc -v /home/yuzhe/yolov5:/home/yolov5 -v /home/yuzhe/data:/home/yuzhe/data -v /home/yuzhe/.hvd:/root/.ssh -e http_proxy=http://10.61.3.207:10809 -e https_proxy=http://10.61.3.207:10809 --ipc host --gpus '"device=3"'  gilsaia/horovod_grace:t1
