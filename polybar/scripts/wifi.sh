#!/bin/bash

# List available Wi-Fi networks
nmcli -t -f SSID dev wifi | uniq

# Connect to a selected network (if a second argument is provided)
if [ "$1" == "connect" ] && [ -n "$2" ]; then
    nmcli dev wifi connect "$2"
fi
