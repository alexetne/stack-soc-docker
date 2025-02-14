#!/bin/bash

chown root:root filebeat.yml
chown root:root metricbeat.yml

chmod go-w filebeat.yml
chmod go-w metricbeat.yml

# Création des répertoires nécessaires pour les bind mounts
mkdir -p ./filebeat_ingest_data
mkdir -p ./logstash_data
mkdir -p ./metricbeat_data

# Attribution des permissions correctes (évite les problèmes d'accès avec Docker)
chmod -R 777 ./filebeat_ingest_data ./logstash_data ./metricbeat_data

echo "Bind mounts directories created and permissions set."
