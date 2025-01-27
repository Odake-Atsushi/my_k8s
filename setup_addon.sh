#! /bin/bash

microk8s status --wait-ready

microk8s enable dns
microk8s enable hostpath-storage
microk8s enable ingress
microk8s enable cert-manager
microk8s enable observability