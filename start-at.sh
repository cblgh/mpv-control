#!/bin/sh
if [ $# -eq 0 ]; then
    echo "Starts playing the media file at the position specified"
    echo "usage: start-at.sh <media file> <time in seconds>"
    exit 1
fi
echo '{ "command": ["loadfile", "'$1'"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "pause", "yes"] }' | socat - /tmp/mpvsocket
sleep .4
echo '{ "command": ["set_property", "time-pos", "'$2'"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "pause", "no"] }' | socat - /tmp/mpvsocket
