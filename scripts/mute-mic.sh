#!/bin/bash
pacmd list-sources | grep -e 'index' -e 'muted:' | sed -n -e '/index: 3/,$p' | head -n2 | tail -n1 | grep yes && pacmd set-source-mute 3 0 || pacmd set-source-mute 3 1