#!/bin/sh

current="$(mpc current --format="%artist% - %title%")"
search="$(echo "$current" | jq -Rr @uri)"
notify-send "Opening Dumb lyrics search for \"$current\" in qutebrowser"
qutebrowser "http://lollab:5555/search?q=$search"
