#!/bin/bash

# Take a screenshot
scrot /tmp/screen_locked.png

# Blur the screenshot
convert /tmp/screen_locked.png -blur 0x6 /tmp/screen_locked.png

# Lock the screen with i3lock using the blurred screenshot
i3lock -i /tmp/screen_locked.png

# Remove the temporary screenshot
rm /tmp/screen_locked.png
