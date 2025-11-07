#!/bin/bash

WALLPAPER_DIR="$HOME/Pictures/Wallpapers"
LAST_WALLPAPER="$WALLPAPER_DIR/last_wallpaper"

# Choose a random wallpaper different from the last one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$LAST_WALLPAPER")" | shuf -n 1)

# Update last wallpaper link
rm -f "$LAST_WALLPAPER"
ln -s "$WALLPAPER" "$LAST_WALLPAPER"

# Get monitor names
MONITORS=$(hyprctl monitors -j | jq -r '.[].name')

# Preload before applying
hyprctl hyprpaper preload "$WALLPAPER"

# Apply the selected wallpaper to each monitor
for MONITOR in $MONITORS; do
    hyprctl hyprpaper wallpaper "$MONITOR,$WALLPAPER"
    sleep 0.2
done
