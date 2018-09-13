#! /bin/bash
[[ -f ~/.Xresources  ]] & xrdb -merge -I$HOME ~/.Xresources
systemctl --user import-environment DISPLAY
# disable key repeat for enter key
xset -r 36
exec i3
