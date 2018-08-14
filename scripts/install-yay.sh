#! /bin/bash
pushd /home/callum/git
if [ ! -d "/home/callum/git/yay" ]; then
    git clone https://aur.archlinux.org/yay.git
    
fi
cd yay
git pull origin master
makepkg -si
popd
