#!/bin/bash

vm.max_map_count=262144
sudo sysctl vm.max_map_count

git clone https://github.com/wazuh/wazuh-docker.git -b v4.10.1
sudo docker-compose -f generate-indexer-certs.yml run --rm generator


sudo docker compose up -d

echo "docker installé et initié"
echo "informations docker en run : "
sudo docker ps
