#!/bin/sh
if [ $# -eq 0 ]; then
    echo "Seeks the currently playing media file"
    echo "usage: seek.sh <time in seconds>"
    exit 1
fi
echo '{ "command": ["set_property", "time-pos", "'$1'"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "pause", "no"] }' | socat - /tmp/mpvsocket
