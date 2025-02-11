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

Une fois que les noeuds ont été lié au manager, vous pouvez passer aux étapes suivantes :

### Se rendre sur l'environnement local :

![local env](./img/local-env.png)

### Se rendre dans services :

![services menu](./img/service-menu.png)

### Cliquer sur `add-service` :

![add-service](./img/service-list.png)

### Ajouter les services comme suivant :

#### Infos générales : 
![add-service](./img/create-serv1.png)

#### Network : 
![add-service](./img/add-net.png)

#### Volumes :
![add-services](./img/add-volume.png)

Ces commandes permettent de reproduire les commandes CLI suivantes :

![add-service-explain](./img/infos-cli.png)

### vérifier que le déploiement est ok :
![status-service](./img/show-run.png)

## Création de l'env Docker swarm : 

### Se rendre dans le menu des env `Environment-related` :
![menu-env](./img/env-menu.png)