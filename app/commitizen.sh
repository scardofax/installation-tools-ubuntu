#!/bin/bash

sudo apt update
sudo apt install pipx
pipx ensurepath

sudo apt install python3-pip

pipx ensurepath
pipx install commitizen
pipx upgrade commitizen

# Add "/home/juliano/.local/bin" in PATH .zshrc
# export PATH=$HOME/bin:/home/juliano/.local/bin:/usr/local/bin:$PATH
