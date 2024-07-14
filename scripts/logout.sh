#!/bin/bash

if [ "$(echo -e 'No\nYes' | rofi -dmenu -i -p "Do you really want to log out?")" = "Yes" ]; then
    xfce4-session-logout --logout
fi
