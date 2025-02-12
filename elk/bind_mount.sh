#!/bin/bash

mkdir -p ~/elastic_stack/{filebeat,metricbeat,logstash}

docker volume create --name certs
docker volume create --name esdata01
docker volume create --name kibanadata
docker volume create --name metricbeatdata01
docker volume create --name filebeatdata01
docker volume create --name logstashdata01