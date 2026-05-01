#!/bin/sh

cd ~/basement/notes && find . ! -path "*.git*" ! -path "*node_modules*" | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | dmenu -i -p 'Find notes:' -l 10 | xargs -r foot -e xdg-open

