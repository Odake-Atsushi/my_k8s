#! /bin/bash

microk8s kubectl scale deployments drupal-deployment --replicas=0
microk8s kubectl scale deployments drupal-mariadb-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-mariadb-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-mariadb-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-nginx-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-office-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-office-nginx-deployment --replicas=0
microk8s kubectl scale deployments nextcloud-redis-deployment --replicas=0
# microk8s kubectl scale deployments ollama-deployment --replicas=0
# microk8s kubectl scale deployments open-webui-deployment --replicas=0
# microk8s kubectl scale deployments searxng-deployment --replicas=0
microk8s kubectl scale deployments test-nginx-deployment --replicas=0


