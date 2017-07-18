#!/bin/sh
echo '{ "command": ["set_property", "pause", false] }' | socat - /tmp/mpvsocket
