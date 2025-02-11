# STACK SOC
## Introduction
Bonjour à tous,

Ce repo à pour but de fournir une stack Docker complète avec différents docker compose utilisé pour produire un SOC dans les grandes lignes.

On retrouvera les outils suivants :

- Suricata : intrusion réseau
- Wazuh : SIEM / EDR / XDR
- ELK : puit de logs
- OpenCTI : Gestion des IOC et analyse de menaces
- TheHive & Cortex : gestion des incidents + automatisation
- Icinga : Surveillance infra & alertes
- Netdata : Surveillance des perfs système
- Volweb : Analyse forensic des incidents
- Docker et portainer : gestion de la stack

## Mise en place

### Etape 1 : Mise en place de docker et portainer

dsjf