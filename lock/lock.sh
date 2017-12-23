#!/bin/bash
scrot /tmp/screen.png
convert ~/.config/lock/lock.png -resize 256x256 /tmp/lock.png

convert /tmp/screen.png -scale 10% -scale 1000% /tmp/screen.png
convert /tmp/screen.png /tmp/lock.png -gravity center -composite -matte /tmp/screen.png
i3lock -u -i /tmp/screen.png
rm /tmp/screen.png /tmp/lock.png