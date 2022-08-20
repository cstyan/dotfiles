#!/usr/bin/env bash
if [[ $(fcitx-remote) = 2 ]]; then
  echo "日本語"
else
  echo "Eng"
fi