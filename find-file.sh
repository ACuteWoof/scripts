#!/bin/sh

find ~ ! -path "*/.*" ! -path "*node_modules*" | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | bemenu --fb "#0b0e14" --ff "#e6e1cf" --nb "#0b0e14" --nf "#e6e1cf" --tb "#0b0e14" --hb "#202229" --tf "#f07178" --hf "#ffb454" --af "#e6e1cf" --ab "#0b0e14" -i -p 'Find file:' -l 10 | xargs -r xdg-open
