#!/bin/sh

mpc ls | dmenu -i -p 'Play album:' -l 10 | sed -e "s|'|\\\\'|g" -e 's|"|\"|g' | xargs -r -I @ sh -c 'mpc clear && mpc add "@" && mpc play'
