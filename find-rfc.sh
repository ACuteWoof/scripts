#!/bin/sh

cd ~/basement/books/rfc/txt/ && cat index.txt | bemenu --fb "#0b0e14" --ff "#e6e1cf" --nb "#0b0e14" --nf "#e6e1cf" --tb "#0b0e14" --hb "#202229" --tf "#f07178" --hf "#ffb454" --af "#e6e1cf" --ab "#0b0e14" -i -p 'Find RFC:' -l 10 | foot -e nvim $(sed -e "s/^/rfc/" -e "s/ .*/.txt/")
