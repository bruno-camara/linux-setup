#!/bin/bash
# script to configure my Docker Engine

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

echo -e "\nChecking the configs"
docker run hello-world
