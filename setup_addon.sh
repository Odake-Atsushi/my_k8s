#! /bin/bash
# sudo snap install microk8s --classic --channel=1.32/stable
# sudo usermod -a -G microk8s $USER

microk8s status --wait-ready

microk8s enable dns
microk8s enable hostpath-storage
microk8s enable ingress
microk8s enable cert-manager
microk8s enable observability