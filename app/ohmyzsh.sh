#!/bin/bash

# Instalar e configurar ZSH
sudo apt install zsh -y
sudo apt-get install git curl -y

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
chsh -s /bin/zsh

## Change ~/.zshrc:
# ZSH_THEME="eastwood"
# plugins=(git terraform kubectl)
# export PATH=$HOME/bin:/usr/julianogm/bin:$PATH

## Adjust terminal, VSCode, pycharm and Intellij for open zsh with default
