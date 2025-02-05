#! /bin/bash

sudo snap remove --purge microk8s

sudo apt -y autopurge snapd
sudo apt update
sudo apt -y upgrade
sudo apt -y install snapd

rm -rf ~/.kube

sudo snap install microk8s --classic --channel=1.31/stable

sudo usermod -a -G microk8s $USER
mkdir -p ~/.kube
chmod 0700 ~/.kube