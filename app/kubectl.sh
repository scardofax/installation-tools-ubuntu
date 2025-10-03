#!/bin/bash

sudo snap install kubeadm -- classic
sudo snap install kubelet -- classic
sudo snap install kubectl -- classic
sudo az aks install-cli