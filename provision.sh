#!/bin/bash

# vars
GO_VERSION=go1.7.4.linux-amd64.tar.gz
GIT_DIR=~/git
DOTFILES_REPO=$GIT_DIR/dotfiles

echo "Setup symlinks."
ln -sf $DOTFILES_REPO/dotfiles/.zshrc ~/.zshrc
ln -sf $DOTFILES_REPO/dotfiles/i3-config ~/.config/i3/config
ln -sf $DOTFILES_REPO/dotfiles/i3status-config ~/.config/i3status/config
ln -sf $DOTFILES_REPO/dotfiles/redshift.conf ~/.config/redshift.conf

apt-get install software-properties-common
add-apt respository "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main"
apt-get update
apt-get upgrade
echo "Install python and ansible."
apt-get install python-dev python-pip
apt-get install ansible
pip install ansible markupsafe

echo "Run ansible provisioning playbooks."
ANSIBLE_NOCOWS=1 ansible-playbook -K -c local -i localhost, packages.yml

echo "Install Sublime Text."
bash ./install-sublime.sh

echo "Install Golang."
rm -rf /usr/local/bin/go
curl -O https://storage.googleapis.com/golang/$GO_VERSION
tar -zxvf $GO_VERSION
sudo mv go /usr/local/
rm $GO_VERSION
ln -s /usr/local/go/bin/* /usr/local/bin/

echo "Install warp drive."
curl -L https://github.com/mfaerevaag/wd/raw/master/install.sh | sh

echo "Install direnv."
bash ./install-direnv.sh

echo "Install Monaco font."
bash ./install-monaco.sh

echo "Get gnome-terminal theme."
curl -O https://raw.githubusercontent.com/chriskempson/base16-gnome-terminal/master/base16-ocean.dark.sh
source base16-ocean.dark.sh
rm base16-ocean.dark.sh

echo
echo "*******************************************************"
echo "Remember to setup GOPATH/GOROOT, change shell to zsh,"
echo "change the terminal profile, and restart your terminal."
echo "*******************************************************"
