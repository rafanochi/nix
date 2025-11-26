#!/bin/bash

# Path to the wallpapers directory
WALLPAPERS_DIR="$HOME/.config/i3/Wallpapers"

# File to store the current index
INDEX_FILE="$HOME/.config/i3/.current_wallpaper_index"

# Find all image files in the directory (you can add more extensions if needed)
wallpapers=("$WALLPAPERS_DIR"/*.png)

# Get the total number of wallpapers
total_wallpapers=${#wallpapers[@]}

# If the index file does not exist, create it and start from 0
if [ ! -f "$INDEX_FILE" ]; then
    echo 0 > "$INDEX_FILE"
fi

# Read the current index
current_index=$(cat "$INDEX_FILE")

# Set the wallpaper using feh (or another wallpaper setter)
feh --bg-scale "${wallpapers[$current_index]}"

# Calculate the next index (wrap around if at the end)
next_index=$(( (current_index + 1) % total_wallpapers ))

# Store the next index for future execution
echo "$next_index" > "$INDEX_FILE"