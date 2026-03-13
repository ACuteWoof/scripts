#!/bin/sh

bookmarks_file="$HOME/basement/bookmarks.txt"

selected=$(cat "$bookmarks_file" | dmenu -l 10 -p "Select bookmark:")

if [ -n "$selected" ]; then
    echo "$selected" | xsel -i -b
    notify-send "Copied to clipboard" "$selected"
fi
