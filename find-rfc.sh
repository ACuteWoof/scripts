#!/bin/sh

cd ~/basement/books/rfc/txt/ && cat index.txt | bemenu --fb "#282828" --ff "#ebdbb2" --nb "#282828" --nf "#ebdbb2" --tb "#282828" --hb "#282828" --tf "#fb4934" --hf "#fabd2f" --nf "#ebdbb2" --af "#ebdbb2" --ab "#282828" -i -p 'Find RFC:' -l 10 | foot -e nvim $(sed -e "s/^/rfc/" -e "s/ .*/.txt/")
