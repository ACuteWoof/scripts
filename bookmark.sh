#!/bin/sh

bookmarks_file="$HOME/basement/bookmarks.txt"

selected=$(cat "$bookmarks_file" | bemenu --fb "#282828" --ff "#ebdbb2" --nb "#282828" --nf "#ebdbb2" --tb "#282828" --hb "#282828" --tf "#fb4934" --hf "#fabd2f" --nf "#ebdbb2" --af "#ebdbb2" --ab "#282828" -l 10 -p "Select bookmark:")

if [ -n "$selected" ]; then
    echo "$selected" | wl-copy
    notify-send "Copied to clipboard" "$selected"
fi
