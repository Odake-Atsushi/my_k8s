#! /bin/bash

# kubectl get deployments
# で現状確認。

scale_replicas=0

# microk8s kubectl scale deployments test-nginx-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments drupal-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments drupal-mariadb-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-mariadb-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-mariadb-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-nginx-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-office-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-office-nginx-deployment --replicas=$scale_replicas
# microk8s kubectl scale deployments nextcloud-redis-deployment --replicas=$scale_replicas
microk8s kubectl scale deployments ollama-deployment --replicas=$scale_replicas
microk8s kubectl scale deployments open-webui-deployment --replicas=$scale_replicas
microk8s kubectl scale deployments searxng-deployment --replicas=$scale_replicas