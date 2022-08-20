#!/bin/bash
if pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 3/,$p' | head -n2 | tail -n1 | grep yes > /dev/null; then
  echo "%{F#F83163}MUTED"
else
  echo "%{F#C5C8C6}active"
fi