#!/bin/sh
if [ $# -eq 0 ]; then
    echo "Loops the supplied media file"
    echo "usage: loop.sh <media file>"
    exit 1
fi
echo '{ "command": ["loadfile", "'$1'"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "loop", "yes"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "pause", "no"] }' | socat - /tmp/mpvsocket
