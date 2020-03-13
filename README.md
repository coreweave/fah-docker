## GPU Folding @ Home in Docker

This repository provides a Dockerfile and example Kubernets manfiest for running [Folding @ Home](https://foldingathome.org) with NVIDIA GPU support in a container. You will need the [NVIDIA Docker Runtime](https://github.com/NVIDIA/nvidia-docker) installed on your host.

This image is published to [Docker Hub](https://hub.docker.com/repository/docker/coreweave/fah-gpu).

#### Example usage
```bash
docker run --gpus all --name fah -p 7396:7396 -v $(pwd)/fah-data:/root -d coreweave/fah-gpu:7.5.1
```

#### Custom settings
```bash
docker run --gpus all --name fah -p 7396:7396 -v $(pwd)/fah-data:/root -d coreweave/fah-gpu:7.5.1 \
  FAHClient --user=CoreWeave --team=236584 --gpu=true --smp=true --priority=low --cpu-usage=90 --web-allow=0/0 --allow=0/0 --gpu-usage=100
```
