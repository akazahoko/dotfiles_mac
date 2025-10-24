#!/bin/bash

COMPONENT=(
  item
  brew
  right
)

CONFIG=(
  script="$PLUGIN_DIR/brew.sh"
  icon.padding_right=0
)

SUBSCRIBE=(
  # is_unlock
  mouse.clicked
)

NAME="${COMPONENT[1]}"

sketchybar  --add "${COMPONENT[@]}" \
            --set "${NAME}" "${CONFIG[@]}" \
            --subscribe "${NAME}" "${SUBSCRIBE[@]}"
