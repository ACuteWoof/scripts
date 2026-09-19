#!/bin/sh

cd ~/.password-store/ && find . -path "*gpg" | sed -e "s/.gpg//" -e 's|./||' | bemenu --fb "#0b0e14" --ff "#e6e1cf" --nb "#0b0e14" --nf "#e6e1cf" --tb "#0b0e14" --hb "#202229" --tf "#f07178" --hf "#ffb454" --af "#e6e1cf" --ab "#0b0e14" -i -p 'Find file:' -l 10 | xargs -I @ pass @ | wl-copy
