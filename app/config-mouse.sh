#!/bin/bash

## Lista dos mauses suportados
# https://github.com/libratbag/libratbag/tree/master/data/devices

# Instalar o Driver
sudo apt install ratbagd -y

# Instalar a Interface Grafica Piper
sudo apt-add-repository ppa:libratbag-piper/piper-libratbag-git -y

sudo apt-get update -y

sudo apt install piper -y


## Fonte
# https://diolinux.com.br/sistemas-operacionais/configure-o-seu-mouse-logitech-no-linux.html