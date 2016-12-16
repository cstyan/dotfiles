#!/bin/bash

sudo mkdir -p /usr/share/fonts/truetype/ttf-monaco; cd /usr/share/fonts/truetype/ttf-monaco/
sudo wget http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
sudo mkfontdir
cd /usr/share/fonts/truetype/
fc-cache