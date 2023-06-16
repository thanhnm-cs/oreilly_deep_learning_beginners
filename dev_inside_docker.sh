cpwd=`pwd`
docker pull tensorflow/tensorflow:latest-gpu
docker pull tensorflow/tensorflow:latest-gpu-jupyter
cid=`docker run --gpus all -v $cpwd:/root/code/ -itd tensorflow/tensorflow:latest-gpu`
docker exec -it $cid bash -c "apt-get update"