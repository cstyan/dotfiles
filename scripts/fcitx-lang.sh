#!/usr/bin/env bash
if [[ $(fcitx-remote) = 2 ]]; then
  echo "日本語"
else
  # hack to get polybar to not move output
  echo "  Eng"
fi