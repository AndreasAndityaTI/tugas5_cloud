#!/bin/bash
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

curl -SL https://github.com/docker/compose/releases/download/v2.23.0/docker-compose-linux-x86_64 -o docker-compose
chmod +x docker-compose
sudo mv docker-compose /usr/bin/

mkdir tugas
curl -O https://raw.githubusercontent.com/Stefanus1803/cloudtugas5/main/docker-compose.yml
sudo mv docker-compose.yml tugas/
curl -O https://raw.githubusercontent.com/Stefanus1803/cloudtugas5/main/nginx.conf
sudo mv nginx.conf tugas/
curl -O https://raw.githubusercontent.com/Stefanus1803/cloudtugas5/main/.env
sudo mv .env tugas/
cd tugas/
docker-compose up -d
