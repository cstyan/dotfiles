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
echo "Install yay for AUR packages"
echo "*******************************************************"
bash $SCRIPTS_DIR/install-yay.sh
yay -S ansible-aur-git

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
echo "Install other fonts."
echo "*******************************************************"
bash ./fonts/install.sh

echo "*******************************************************"
echo "Setup symlinks."
echo "*******************************************************"
mkdir -p ~/.config/dunst
mkdir -p ~/.config/ranger
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
mkdir -p ~/.config/alacritty
mkdir -p ~/.config/neofetch
ln -sf $DOTFILES_REPO/dotfiles/.zshrc ~/.zshrc
ln -sf $DOTFILES_REPO/dotfiles/.zlogin ~/.zlogin
ln -sf $DOTFILES_REPO/dotfiles/.Xresources ~/.Xresources
ln -sf $DOTFILES_REPO/dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sf $DOTFILES_REPO/dotfiles/i3-config ~/.config/i3/config
ln -sf $DOTFILES_REPO/dotfiles/i3status-config ~/.config/i3status/config
ln -sf $DOTFILES_REPO/dotfiles/redshift.conf ~/.config/redshift.conf
ln -sf $DOTFILES_REPO/dotfiles/dunstrc ~/.config/dunst/dunstrc
ln -sf $DOTFILES_REPO/dotfiles/ranger.conf ~/.config/ranger/rc.conf
ln -sf $DOTFILES_REPO/dotfiles/neofetch.conf ~/.config/neofetch/config.conf
ln -sf $DOTFILES_REPO/dotfiles/.xinitrc ~/.xinitrc
ln -sf $DOTFILES_REPO/lock/ ~/.config/lock
