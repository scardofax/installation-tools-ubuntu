#!/bin/bash

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt-get update -y
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl status docker

sudo usermod -aG docker ${USER}
su - ${USER}
