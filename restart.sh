#!/bin/sh
echo '{ "command": ["set_property", "time-pos", "0"] }' | socat - /tmp/mpvsocket
echo '{ "command": ["set_property", "pause", "no"] }' | socat - /tmp/mpvsocket
