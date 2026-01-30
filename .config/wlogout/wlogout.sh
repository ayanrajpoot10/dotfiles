#!/usr/bin/env bash

# Toggle wlogout
pgrep -x "wlogout" && pkill -x "wlogout" && exit 0

# Get monitor info
focused_monitor=$(hyprctl -j monitors | jq '.[] | select(.focused==true)')
mon_width=$(echo "$focused_monitor" | jq -r '.width')
mon_height=$(echo "$focused_monitor" | jq -r '.height')
mon_scale=$(echo "$focused_monitor" | jq -r '.scale' | sed 's/\.//')

# Calculate values
export margin_x=$((mon_width * 30 / mon_scale))
export margin_y=$((mon_height * 25 / mon_scale))
export hover_x=$((mon_width * 27 / mon_scale))
export hover_y=$((mon_height * 20 / mon_scale))
export font_size=$((mon_height * 2 / 100))
export active_rad=50
export button_rad=80

# Launch wlogout
wlogout -b 2 -c 0 -r 0 -m 0 \
    -l "$HOME/.config/wlogout/layout" \
    -C <(envsubst < "$HOME/.config/wlogout/style.css") \
    -p layer-shell
