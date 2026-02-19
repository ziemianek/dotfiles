#!/usr/bin/env bash
sid="${NAME#space.}"

# Prefer event payload, fallback to querying aerospace
focused="${FOCUSED_WORKSPACE}"
if [ -z "$focused" ]; then
  focused="$(aerospace list-workspaces --focused 2>/dev/null | head -n1)"
fi

if [ "$focused" = "$sid" ]; then
  sketchybar --set "$NAME" background.color=0xffffffff label.color=0xff000000
else
  sketchybar --set "$NAME" background.color=0x40ffffff label.color=0xffffffff
fi
