#! /bin/bash

#アプリ
microk8s kubectl delete -k my_observability
microk8s kubectl delete -k my_nextcloud
microk8s kubectl delete -k my_drupal
microk8s kubectl delete -k my_AI

#後片付け
microk8s kubectl delete -f ingress-service.yaml
microk8s kubectl delete -f test.yaml
# microk8s kubectl delete -f letsencrypt-issuer.yaml