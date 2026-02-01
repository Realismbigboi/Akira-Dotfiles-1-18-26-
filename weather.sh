#!/bin/bash

CACHE_FILE="$HOME/.cache/wttr_cache"
LOCATION=""

# 1. IMMEDIATE OUTPUT: Print the last known weather instantly
if [ -f "$CACHE_FILE" ]; then
    cat "$CACHE_FILE"
else
    echo "   ..." # Show a placeholder if first run
fi

# 2. BACKGROUND UPDATE: Download new weather silently
# The '&' at the end makes this run in the background so Waybar doesn't wait
(
    current_weather=$(curl -s --max-time 5 "https://wttr.in/$LOCATION?format=%t")
    
    # Only update cache if download succeeded
    if [ ! -z "$current_weather" ]; then
        echo "   $current_weather" > "$CACHE_FILE"
    fi
) &
