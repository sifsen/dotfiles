#!/bin/bash

# Check for argument to set output
if [ "$1" == "set" ]; then
    output="$2"
    pactl set-default-sink "$output"
    exit 0
fi

# Get current default sink
current_output=$(pactl info | grep "Default Sink" | awk '{print $3}')

# Output current default sink
case $current_output in
    hdmi)
        echo "HDMI"
        ;;
    speakers)
        echo "Speakers"
        ;;
    headphones)
        echo "Headphones"
        ;;
    *)
        echo "Unknown"
        ;;
esac
