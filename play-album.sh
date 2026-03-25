#!/bin/sh

mpc ls | dmenu -i -p 'Play album:' -l 10 | xargs -I @ sh -c 'mpc clear && mpc add "@" && mpc play'
