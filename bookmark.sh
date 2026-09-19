#!/bin/sh

bookmarks_file="$HOME/basement/bookmarks.txt"

selected=$(cat "$bookmarks_file" | bemenu --fb "#0b0e14" --ff "#e6e1cf" --nb "#0b0e14" --nf "#e6e1cf" --tb "#0b0e14" --hb "#202229" --tf "#f07178" --hf "#ffb454" --af "#e6e1cf" --ab "#0b0e14" -l 10 -p "Select bookmark:")

if [ -n "$selected" ]; then
    echo "$selected" | wl-copy
    notify-send "Copied to clipboard" "$selected"
fi
