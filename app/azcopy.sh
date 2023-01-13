wget https://aka.ms/downloadazcopy-v10-linux
tar -xvf downloadazcopy-v10-linux

sudo rm /usr/bin/azcopy

sudo cp ./azcopy_linux_amd64_*/azcopy /usr/bin/
sudo chmod 755 /usr/bin/azcopy

azcopy --version
