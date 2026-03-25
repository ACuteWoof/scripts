#!/bin/sh

mpc clear && mpc ls | dmenu -i -p 'Play album:' -l 10 | xargs -I @ mpc add @ && mpc play
