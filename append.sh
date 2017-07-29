#!/bin/sh
if [ $# -eq 0 ]; then
    echo "Appends the supplied media file, playing it after the currently playing file has finished"
    echo "usage: append.sh <media file>"
    exit 1
fi
echo '{ "command": ["loadfile", "'$1'", "append-play"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "loop", "yes"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "pause", "no"] }' | socat - /tmp/mpvsocket
