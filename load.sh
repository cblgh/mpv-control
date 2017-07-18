#!/bin/sh
if [ $# -eq 0 ]; then
    echo "Loads a media file to an already running mpv server"
    echo "usage: load.sh <media file>"
    exit 1
fi
echo '{ "command": ["loadfile", "'$1'"] }' | socat - /tmp/mpvsocket
