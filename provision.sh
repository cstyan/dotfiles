#!/bin/bash

# vars
VAGRANT_VERSION=1.9.3
VAGRANT_DEB=vagrant_"$VAGRANT_VERSION"_x86_64.deb
GIT_DIR=~/git
DOTFILES_REPO=$GIT_DIR/dotfiles
USER=callum

git submodule sync; git submodule update --init

apt install software-properties-common
add-apt-respository "ppa:ansible/ansible"
apt update
apt upgrade

echo "*******************************************************"
echo "Install python and ansible."
echo "*******************************************************"
apt install python-dev python-pip
apt install ansible
pip install ansible markupsafe
chown -R $USER:$USER ~/.ansible

echo "*******************************************************"
echo "Run ansible provisioning playbooks."
echo "*******************************************************"
ANSIBLE_NOCOWS=1 ansible-playbook -K -c local -i localhost, packages.yml

echo "*******************************************************"
echo "Install Sublime Text."
echo "*******************************************************"
bash ./scripts/install-sublime.sh

echo "*******************************************************"
echo "Install Golang."
echo "*******************************************************"
bash ./scripts/install-golang.sh

echo "*******************************************************"
echo "Install Vagrant."
echo "*******************************************************"
curl -O https://releases.hashicorp.com/vagrant/"$VAGRANT_VERSION"/"$VAGRANT_DEB"
dpkg -i $VAGRANT_DEB
rm $VAGRANT_DEB

echo "*******************************************************"
echo "Install warp drive."
echo "*******************************************************"
curl -L https://github.com/mfaerevaag/wd/raw/master/install.sh | sh

echo "*******************************************************"
echo "Install direnv."
echo "*******************************************************"
bash ./scripts/install-direnv.sh

echo "*******************************************************"
echo "Install Monaco font."
echo "*******************************************************"
bash ./scripts/install-monaco.sh

echo "*******************************************************"
echo "Install other fonts."
echo "*******************************************************"
bash ./fonts/install.sh

echo "*******************************************************"
echo "Install obs-studio"
echo "*******************************************************"
bash ./scripts/install-obs.sh

echo "*******************************************************"
echo "Install nvm."
echo "*******************************************************"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
chown -R $USER:$USER ~/.nvm

echo "*******************************************************"
echo "Install Telegram."
echo "*******************************************************"
bash ./scripts/install-telegram.sh

echo "*******************************************************"
echo "Setup symlinks."
echo "*******************************************************"
mkdir ~/.config/dunst
ln -sf $DOTFILES_REPO/dotfiles/.zshrc ~/.zshrc
ln -sf $DOTFILES_REPO/dotfiles/.Xresources ~/.Xresources
ln -sf $DOTFILES_REPO/dotfiles/i3-config ~/.config/i3/config
ln -sf $DOTFILES_REPO/dotfiles/i3status-config ~/.config/i3status/config
ln -sf $DOTFILES_REPO/dotfiles/ncmpcpp ~/.ncmpcpp/config
ln -sf $DOTFILES_REPO/dotfiles/redshift.conf ~/.config/redshift.conf
ln -sf $DOTFILES_REPO/dotfiles/dunstrc ~/.config/dunst/dunstrc
ln -sf $DOTFILES_REPO/dotfiles/ranger/rc.conf ~/.config/ranger/rc.conf
ln -sf $DOTFILES_REPO/lock/ ~/.config/lock/

echo
echo "*******************************************************"
echo "Remember to setup GOPATH/GOROOT, change shell to zsh,"
echo "change the terminal profile, and restart your terminal."
echo "*******************************************************"
