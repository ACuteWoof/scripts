#!/bin/sh

find ~ | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | dmenu -i -p 'Find file:' -l 10 | xargs -r xdg-open
