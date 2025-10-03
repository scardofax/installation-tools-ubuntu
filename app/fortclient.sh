# Download libappindicator1
wget http://mirrors.kernel.org/ubuntu/pool/universe/liba/libappindicator/libappindicator1_12.10.1+20.10.20200706.1-0ubuntu1_amd64.deb 

# Download dependency required by libappindicator1
wget http://mirrors.kernel.org/ubuntu/pool/universe/libd/libdbusmenu/libdbusmenu-gtk4_16.04.1+18.10.20180917-0ubuntu8_amd64.deb

# Install both packages
sudo apt --fix-broken install ./libappindicator1_12.10.1+20.10.20200706.1-0ubuntu1_amd64.deb
sudo apt --fix-broken install ./libdbusmenu-gtk4_16.04.1+18.10.20180917-0ubuntu8_amd64.deb
sudo apt autoremove
sudo dpkg -i forticlient_vpn_7.4.0.1636_amd64.deb