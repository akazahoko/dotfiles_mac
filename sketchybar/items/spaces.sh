#!/bin/bash

ICON="􀀁"

SPACE_ICONS=("1" "2" "3" "4" "5" "6" "7" "8" "9" "10" "11" "12")

# SPACE_COUNT="$(yabai -m query --spaces | jq length)"

# Aerospace config
# for sid in $(aerospace list-workspaces --all); do
#     sketchybar --add item space.$sid left \
#         --subscribe space.$sid aerospace_workspace_change \
#         --set space.$sid \
#         background.color=0x44ffffff \
#         background.corner_radius=5 \
#         background.height=20 \
#         background.drawing=off \
#         label="$sid" \
#         click_script="aerospace workspace $sid" \
#         script="$CONFIG_DIR/plugins/aerospace.sh $sid"
# done

# Mac Default Workspace

for i in "${!SPACE_ICONS[@]}"; do
  SID="$((i + 1))"
  CONFIG=(
    space="$SID"
    icon="${SPACE_ICONS[i]}"
    script="$PLUGIN_DIR/space.sh"
    icon.font="SF Pro:Regular:18.0"
    icon.padding_left=10
    icon.padding_right=0
    background.drawing=off
    click_script="yabai -m space --focus $SID"
  )
  sketchybar  --add space space."$SID" left \
              --set space."$SID" "${CONFIG[@]}" \
              # --subscribe space."$SID" space_change
done
sketchybar  --add bracket spaces '/space\..*/'

