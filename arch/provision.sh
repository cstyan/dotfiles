#!/bin/bash

# vars
GIT_DIR=~/git
DOTFILES_REPO=$GIT_DIR/dotfiles
SCRIPTS_DIR=$DOTFILES_REPO/scripts
USER=callum

# for antigen
git submodule sync; git submodule update --init

echo "*******************************************************"
echo "Install ansible."
echo "*******************************************************"
sudo pacman -Syu
sudo pacman -S ansible

echo "*******************************************************"
echo "Run ansible provisioning playbooks."
echo "*******************************************************"
ANSIBLE_NOCOWS=1 ansible-playbook -K -c local -i localhost, packages.yml --extra-vars "scripts_dir=$SCRIPTS_DIR"

echo "*******************************************************"
echo "Install Golang."
echo "*******************************************************"
bash $SCRIPTS_DIR/install-golang.sh

echo "*******************************************************"
echo "Install warp drive."
echo "*******************************************************"
curl -L https://github.com/mfaerevaag/wd/raw/master/install.sh | sh

echo "*******************************************************"
echo "Setup symlinks."
echo "*******************************************************"
mkdir -p ~/.config/dunst
mkdir -p ~/.config/ranger
ln -sf $DOTFILES_REPO/dotfiles/.zshrc ~/.zshrc
ln -sf $DOTFILES_REPO/dotfiles/.Xresources ~/.Xresources
ln -sf $DOTFILES_REPO/dotfiles/i3-config ~/.config/i3/config
ln -sf $DOTFILES_REPO/dotfiles/i3status-config ~/.config/i3status/config
ln -sf $DOTFILES_REPO/dotfiles/redshift.conf ~/.config/redshift.conf
ln -sf $DOTFILES_REPO/dotfiles/dunstrc ~/.config/dunst/dunstrc
ln -sf $DOTFILES_REPO/dotfiles/ranger.conf ~/.config/ranger/rc.conf
ln -sf $DOTFILES_REPO/lock/ ~/.config/lock