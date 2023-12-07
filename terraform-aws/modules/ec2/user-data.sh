#!/bin/bash

# Atualizando a lista de pacotes e pacotes já instalados
sudo apt-get update -y

# Add Swap Memory of 2GB
sudo swapon --show
free -h
df -h
sudo fallocate -l 2G /swapfile
ls -lh /swapfile
sudo chmod 600 /swapfile
ls -lh /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h
cat /proc/sys/vm/swappiness
sudo sysctl vm.swappiness=10
cat /proc/sys/vm/vfs_cache_pressure
sudo sysctl vm.vfs_cache_pressure=50

# Instalando pacotes essenciais
sudo apt-get install -y curl net-tools wget unzip tree make

# Instalando Docker
sudo apt-get install -y docker.io

# Instalando Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Start serviço Docker
sudo systemctl start docker
sudo systemctl enable docker

# Validando versões Docker e Docker Compose 
docker --version
docker-compose --version