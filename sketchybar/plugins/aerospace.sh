#!/usr/bin/env bash
sid="${NAME#space.}"

if [ "$FOCUSED_WORKSPACE" = "$sid" ]; then
  sketchybar --set "$NAME" background.color=0xff00ff99 label.color=0xff000000
else
  sketchybar --set "$NAME" background.color=0x40ffffff label.color=0xffffffff
fi
