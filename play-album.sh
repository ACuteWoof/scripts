#!/bin/sh

mpc ls | bemenu --fb "#282828" --ff "#ebdbb2" --nb "#282828" --nf "#ebdbb2" --tb "#282828" --hb "#282828" --tf "#fb4934" --hf "#fabd2f" --nf "#ebdbb2" --af "#ebdbb2" --ab "#282828" -i -p 'Play album:' -l 10 | sed -e "s|'|\\\\'|g" -e 's|"|\"|g' | xargs -r -I @ sh -c 'mpc clear && mpc add "@" && mpc play'
