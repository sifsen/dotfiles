#!/bin/bash

# Colors for animation
colors=("#FF00FF" "#800080" "#DA70D6" "#DDA0DD" "#FF69B4" "#FF1493")

# Function to change the border color
change_border_color() {
    local win_id=$1
    local color=$2
    i3-msg "[id=$win_id] border pixel 2, border_color $color"
}

# Main loop
while true; do
    # Get the ID of the focused window
    focused_win_id=$(xdotool getwindowfocus)
    
    # Iterate through colors to create animation effect
    for color in "${colors[@]}"; do
        change_border_color $focused_win_id $color
        sleep 0.2  # Adjust the delay as needed for desired animation speed
    done
done
