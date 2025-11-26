#!/bin/bash

# Directory containing wallpapers
WALLPAPER_DIR="$HOME/.config/i3/Wallpapers"

# Select a random PNG file
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f -name "*.png" | shuf -n 1)

# Check if a wallpaper was found
if [ -n "$RANDOM_WALLPAPER" ]; then
    # You can set this wallpaper with a command like feh, nitrogen, or another wallpaper setter
    i3lock -u -i "$RANDOM_WALLPAPER"  # Example using feh
else
    echo "No PNG files found in the specified directory."
fi