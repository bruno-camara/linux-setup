#!/bin/bash

echo "Installing Docker-Compose"

sudo apt-get update
sudo apt-get install docker-compose-plugin

echo -e "\nVerifying the installation"
docker compose version
