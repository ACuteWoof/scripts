#!/bin/sh

find ~/basement/notes  | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | dmenu -i -p 'Find notes:' -l 10 | xargs -r xdg-open

