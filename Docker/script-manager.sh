#!/bin/bash

# Update de la VM
echo "update de la VM"
sudo apt update
echo "50% effectué"
sudo apt upgrade -y
echo "100% effectué"
echo "Mise à jour du système terminé"

# Installation du repo docker
echo "Installation du repo docker"
sudo apt-get install -y ca-certificates curl
echo "16% effectué"
sudo install -m 0755 -d /etc/apt/keyrings
echo "33% effectué"
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
echo "49% effectué"
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo "65% effectué"

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "81% effectué"
sudo apt-get update
echo "100% effectué"
echo "fin de l'installation du repo docker"

# installation de docker
echo "installation de docker"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
echo "100% effectué"
echo "fin de l'installation de docker"

# installation Portainer
echo "installation portainer"
sudo docker volume create portainer_data
echo "50% effectué"
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:2.21.5
echo "100% effectué"
echo "fin de l'installation de portainer"

# Création du swarm
docker swarm init

docker network create --driver bridge soc_network
