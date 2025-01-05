#! /bin/bash

#準備
microk8s kubectl apply -f letsencrypt-issuer.yaml
microk8s kubectl apply -f ingress-service.yaml

#テスト
microk8s kubectl apply -k test_nginx


#アプリ
microk8s kubectl apply -k my_observability
microk8s kubectl apply -k my_nextcloud
microk8s kubectl apply -k my_drupal
microk8s kubectl apply -k my_AI