#! /bin/bash

#アプリ
microk8s kubectl delete -k my_observability
microk8s kubectl delete -k my_nextcloud
microk8s kubectl delete -k my_drupal
microk8s kubectl delete -k my_vaultwarden
microk8s kubectl delete -k my_AI

#テスト
microk8s kubectl delete -k test_nginx

#後片付け
microk8s kubectl delete -f ingress-service.yaml
microk8s kubectl delete -f letsencrypt-issuer.yaml