#!/bin/sh

grep http ~/basement/bookmarks.txt | bemenu --fb "#282828" --ff "#ebdbb2" --nb "#282828" --nf "#ebdbb2" --tb "#282828" --hb "#282828" --tf "#fb4934" --hf "#fabd2f" --nf "#ebdbb2" --af "#ebdbb2" --ab "#282828" -i -p 'Open qutebrowser:' -l 10 | xargs -I @ -0 qutebrowser "@"
