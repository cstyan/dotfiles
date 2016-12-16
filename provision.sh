#!/bin/bash

# vars
GO_VERSION=go1.7.4.linux-amd64.tar.gz

apt-get install software-properties-common
add-apt respository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
apt-get update
apt-get upgrade
echo "Install python and ansible."
apt-get install python-dev python-pip
apt-get install ansible
pip install ansible markupsafe

echo "Run ansible provisioning playbooks."
ansible-playbook -K -c local -i localhost, packages.yml

echo "Install Golang."
rm -rf /usr/local/bin/go
curl -O https://storage.googleapis.com/golang/$GO_VERSION
tar -zxvf $GO_VERSION
sudo mv go /usr/local/bin
rm $GO_VERSION

echo "Install warp drive."
curl -L https://github.com/mfaerevaag/wd/raw/master/install.sh | sh

echo "Install Monaco font."
bash ./install-monaco.sh

echo "Remember to setup GOPATH/GOROOT, and ~/.warprc"