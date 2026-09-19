#!/bin/sh
notify-send "Loading MPV"
mpv "$(echo $(wl-paste))"
notify-send "MPV closed"
