#!/bin/sh
echo '{ "command": ["set_property", "pause", true] }' | socat - /tmp/mpvsocket
