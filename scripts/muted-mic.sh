#!/bin/bash
if pulseaudio-ctl | grep 'Is source muted' | grep yes > /dev/null; then
  echo "%{F#F83163}MUTED"
else
  echo "%{F#C5C8C6}active"
fi