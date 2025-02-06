#! /bin/bash

bash delete_all.sh
sudo microk8s reset
sudo snap remove --purge microk8s

#sudo apt -y autopurge snapd
sudo apt update
sudo apt -y upgrade
#sudo apt -y install snapd

rm -rf ~/.kube

sudo snap install microk8s --classic --channel=1.32/stable

sudo usermod -a -G microk8s $USER
mkdir -p ~/.kube
chmod 0700 ~/.kube

bash setup_addon.sh
bash setup_all.sh
