#!/bin/bash

# Path to dmenu
DMENU_PATH=$(which dmenu)

# Log the paths and commands for debugging
echo "Using dmenu at: $DMENU_PATH" >> /tmp/polybar-logout.log

confirm=$(echo -e "No\nYes" | $DMENU_PATH -i -p "Are you sure you want to logout?")
echo "User selected: $confirm" >> /tmp/polybar-logout.log

if [ "$confirm" == "Yes" ]; then
    echo "Logging out..." >> /tmp/polybar-logout.log
    i3-msg exit
else
    echo "Logout canceled" >> /tmp/polybar-logout.log
fi
