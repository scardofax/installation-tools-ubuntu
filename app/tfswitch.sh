#!/bin/bash

wget https://raw.githubusercontent.com/warrensbox/terraform-switcher/master/install.sh
chmod 755 install.sh
./install.sh -b /home/julianogm/.local/bin

# Criar o arquivo com o seguinte conteudo
# vi ~/.tfswitch.toml
# bin = "/home/julianogm/.local/bin/terraform"

# cat ~/.zshrc
# export PATH=$HOME/bin:/usr/julianogm/bin:/home/julianogm/.local/bin:/usr/local/bin:$PATH
