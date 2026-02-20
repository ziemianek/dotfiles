#!/usr/bin/env bash

sid="${NAME#space.}"
sid="${sid#space_underline.}"

# Prefer event payload, fallback to querying AeroSpace
focused="${FOCUSED_WORKSPACE}"
if [ -z "$focused" ]; then
  focused="$(aerospace list-workspaces --focused 2>/dev/null | head -n1)"
fi

ACTIVE_UNDERLINE=0xffffffff
INACTIVE_UNDERLINE=0x00ffffff

ACTIVE_BG=0x30ffffff
INACTIVE_BG=0x00000000    # transparent

if [ "$focused" = "$sid" ]; then
  # Animate underline
  sketchybar --animate sin 6 --set "space_underline.$sid" background.color="$ACTIVE_UNDERLINE"

  # Dark background pill behind label
  sketchybar --animate sin 6 --set "space.$sid" \
    background.drawing=on \
    background.color="$ACTIVE_BG" \
    background.corner_radius=6 \
    label.color=0xffffffff
else
  # Hide underline
  sketchybar --animate sin 6 --set "space_underline.$sid" background.color="$INACTIVE_UNDERLINE"

  # Remove background
  sketchybar --set "space.$sid" \
    background.drawing=off \
    background.color="$INACTIVE_BG" \
    label.color=0x80ffffff
fi
