# Configuration de Portainer pour SWARM

## Mise en place du swarm
Veuillez récupérer la commande affiché à l'écran commenceant par :
```
docker swarm join --token SWMTKN-1-5lrebm28fiqi22ihg0ueehtjumql9d3skaj3uqevdj56qwy2wg-dv59ktfk632756mi4idp6v2tp 10.0.0.51:2377
```

Et la taper sur chaque noeud où le script `script-node.sh`à été éxécuté. N'oubliez pas de l'éxécuter en `sudo`.

## Mise en place du service
Se rendre sur son serveur portainer présent sur docker manager

```
https://IP-docker-manager:9443
```

Une fois que les noeuds ont été ahj