#!/bin/bash

# Get the current keyboard layout
CURRENT_LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}')

# Check the current layout and toggle it
if [ "$CURRENT_LAYOUT" = "us" ]; then
    setxkbmap ru
    echo "Switched to Russian (ru)"
elif [ "$CURRENT_LAYOUT" = "ru" ]; then
    setxkbmap us
    echo "Switched to English (en)"
else
    echo "Unknown layout: $CURRENT_LAYOUT. Switching to English (en) by default."
    setxkbmap us
fi
