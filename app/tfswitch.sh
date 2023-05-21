#!/bin/bash

curl -L https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh | bash


#### if error "install: cannot create regular file '/usr/local/bin/tfswitch': Permission denied" ####

# wget https://raw.githubusercontent.com/warrensbox/terraform-switcher/release/install.sh
# chmod 755 install.sh
# sudo ./install.sh
