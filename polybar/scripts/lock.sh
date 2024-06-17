
xset -b

IMAGE_PATH="/tmp/lockscreen.png"
BLURRED_IMAGE_PATH="/tmp/lockscreen_blurred.png"
LOG_FILE="/tmp/lockscreen.log"

echo "Script triggered at $(date)" >> "$LOG_FILE"

scrot "$IMAGE_PATH" 2>> "$LOG_FILE"
if [ $? -ne 0 ]; then
    echo "Error: scrot failed" >> "$LOG_FILE"
    exit 1
fi

convert "$IMAGE_PATH" -blur 0x10 "$BLURRED_IMAGE_PATH" 2>> "$LOG_FILE"
if [ $? -ne 0 ]; then
    echo "Error: convert failed" >> "$LOG_FILE"
    exit 1
fi

i3lock -i "$BLURRED_IMAGE_PATH" 2>> "$LOG_FILE"
if [ $? -ne 0 ]; then
    echo "Error: i3lock failed" >> "$LOG_FILE"
    exit 1
fi

rm "$IMAGE_PATH" "$BLURRED_IMAGE_PATH"
