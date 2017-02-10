#!/bin/bash

# vars
GO_VERSION=go1.7.4.linux-amd64.tar.gz
GIT_DIR=~/git
DOTFILES_REPO=$GIT_DIR/dotfiles
USER=callum

apt-get install software-properties-common
add-apt respository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
apt-get update
apt-get upgrade
echo "*******************************************************"
echo "Install python and ansible."
echo "*******************************************************"
apt-get install python-dev python-pip
apt-get install ansible
pip install ansible markupsafe
chown -R $USER:$USER ~/.ansible

echo "*******************************************************"
echo "Run ansible provisioning playbooks."
echo "*******************************************************"
ANSIBLE_NOCOWS=1 ansible-playbook -K -c local -i localhost, packages.yml

echo "*******************************************************"
echo "Install Sublime Text."
echo "*******************************************************"
bash ./install-sublime.sh

echo "*******************************************************"
echo "Install Golang."
echo "*******************************************************"
rm -rf /usr/local/bin/go
curl -O https://storage.googleapis.com/golang/$GO_VERSION
tar -zxvf $GO_VERSION
sudo mv go /usr/local/
rm $GO_VERSION
ln -s /usr/local/go/bin/* /usr/local/bin/

echo "*******************************************************"
echo "Install warp drive."
echo "*******************************************************"
curl -L https://github.com/mfaerevaag/wd/raw/master/install.sh | sh

echo "*******************************************************"
echo "Install direnv."
echo "*******************************************************"
bash ./install-direnv.sh

echo "*******************************************************"
echo "Install Monaco font."
echo "*******************************************************"
bash ./install-monaco.sh

echo "*******************************************************"
echo "Install obs-studio"
echo "*******************************************************"
bash ./install-obs.sh

echo "*******************************************************"
echo "Install nvm."
echo "*******************************************************"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
chown -R $USER:$USER ~/.nvm

echo "*******************************************************"
echo "Setup symlinks."
echo "*******************************************************"
ln -sf $DOTFILES_REPO/dotfiles/.zshrc ~/.zshrc
ln -sf $DOTFILES_REPO/dotfiles/i3-config ~/.config/i3/config
ln -sf $DOTFILES_REPO/dotfiles/i3status-config ~/.config/i3status/config
ln -sf $DOTFILES_REPO/dotfiles/ncmpcpp ~/.ncmpcpp/config
ln -sf $DOTFILES_REPO/dotfiles/redshift.conf ~/.config/redshift.conf

echo
echo "*******************************************************"
echo "Remember to setup GOPATH/GOROOT, change shell to zsh,"
echo "change the terminal profile, and restart your terminal."
echo "*******************************************************"
