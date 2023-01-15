#!/bin/bash

# break on error
set -e

usage() {
  echo "## USAGE: ${0} --name-git Juliano Martins --email-git j7g7m7@yahoo.com.br"
}

update_linux(){
    sudo apt-get update -y
    sudo apt-get upgrade -y
    sudo apt dist-upgrade -y
    sudo apt full-upgrade -y 
    sudo apt autoremove -y
    sudo apt autoclean
    sudo snap refresh
}

update_certificate(){
  wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
}

if [ -z "$1" ]; then
  echo "ERROR :: No parameters."
  usage
  exit 1
fi

while [[ $# -gt 0 ]]; do
  case $1 in
  --name-git)
    NAME_GIT="$2"
    shift
    shift
    ;;
  --email-git)
    EMAIL_GIT="$2"
    shift
    shift
    ;;
  *) # unknown option
    echo "ERROR :: Invalid option '${1}'."
    usage
    exit 1
    ;;
  esac
done

echo "Starting Install commons APPs DevOps..."

# Update Linux
update_certificate
update_linux

#Criar um Loop para rodar os arquivos dentro da pasta APP
for i in ./app/*.sh; do
    FILENAME=${i##*/}
    FILENAME="${FILENAME%.*}"
    echo "####################################"
    echo "#     Installing ${FILENAME} ..."
    echo "####################################"
    sudo chmod +x $i
    sudo $i
done

sudo ./clean_ubuntu.sh

# Git Config
git config --global user.name ${NAME_GIT}
git config --global user.email ${EMAIL_GIT}
