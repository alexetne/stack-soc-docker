#!/bin/bash

# vm.max_map_count=262144
# sudo sysctl vm.max_map_count

# git clone https://github.com/wazuh/wazuh-docker.git
# cd wazuh-docker
# sudo docker-compose -f generate-indexer-certs.yml run --rm generator


# sudo docker compose up -d

git clone https://github.com/wazuh/wazuh-docker.git -b v4.10.1
cd wazuh-docker/single-node

echo "Default user : " && cat docker-compose.yml | grep "INDEXER_USERNAME"
echo "Default password : " && cat docker-compose.yml | grep "INDEXER_PASSWORD"

sudo docker compose -f generate-indexer-cert.yml run --rm generator

sudo docker compose up -d

echo "docker installé et initié"
echo "informations docker en run : "
sudo docker ps
