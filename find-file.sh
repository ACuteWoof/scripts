#!/bin/sh

find ~ | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | dmenu -i -p 'Find:' -l 10 | xargs -r xdg-open
