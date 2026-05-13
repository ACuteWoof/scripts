#!/bin/sh

cd ~/basement/notes && find . ! -path "*.git*" ! -path "*node_modules*" | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | bemenu --fb "#282828" --ff "#ebdbb2" --nb "#282828" --nf "#ebdbb2" --tb "#282828" --hb "#282828" --tf "#fb4934" --hf "#fabd2f" --nf "#ebdbb2" --af "#ebdbb2" --ab "#282828" -i -p 'Find notes:' -l 10 | xargs -r foot -e xdg-open

