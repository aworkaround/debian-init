#! /bin/bash
# This script is only for Debian/Ubuntu based systems.

apt install -y vagrant
apt install -y virtualbox
cd src
vagrant up
echo "Use 'vagrant ssh' to initialize a SSH session to your VM"
echo "'vagrant destroy' can be used to delete the VM including data"
echo "'vagrant reload' can be used if we made changes in vagrantfile or related files"
echo "'vagrant up' is for creating VM or turning  it ON. 'vagrant halt' is for shutting down"