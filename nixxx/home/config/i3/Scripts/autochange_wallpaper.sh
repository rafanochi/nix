#!/bin/bash

# Path to the wallpapers directory
WALLPAPERS_DIR="$HOME/.config/i3/Wallpapers"

# Time interval (in seconds) for changing the wallpaper (30 minutes = 1800 seconds)
INTERVAL=900

# Function to change the wallpaper
change_wallpaper() {
    # Find all image files in the directory (you can add more extensions if needed)
    wallpapers=("$WALLPAPERS_DIR"/*.png)

    # Get the total number of wallpapers
    total_wallpapers=${#wallpapers[@]}

    # Loop through the wallpapers in sequence
    while true; do
        for ((i=0; i<total_wallpapers; i++)); do
            # Set the wallpaper using feh (or another wallpaper setter)
            feh --bg-scale "${wallpapers[$i]}"

            # Wait for the specified interval before changing again
            sleep "$INTERVAL"
        done
    done
}

# Call the function to start changing wallpapers
change_wallpaper
