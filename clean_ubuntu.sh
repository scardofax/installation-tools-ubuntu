#!/bin/bash

# Ver o tamanho 
sudo du -sh /var/cache/apt

# Liberar Espaço no Disco Boot
sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')") -y
sudo apt-get autoremove -y
sudo apt-get purge $(dpkg -l linux-{image,headers}-"[0-9]*" | awk '/ii/{print $2}' | grep -ve "$(uname -r | sed -r 's/-[a-z]+//')")  -y
sudo update-grub

sudo apt-get autoremove -y
sudo apt clean
sudo apt autoclean


# https://linuxavante.com/como-liberar-espaco-na-particao-boot-no-ubuntu-debian-ou-linux-mint
