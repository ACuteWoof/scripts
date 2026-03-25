#!/bin/sh

find ~ ! -path "*/.*" ! -path "*node_modules*" | sed -e "s/'/\\\'/g" -e 's/\ /\\ /g' | dmenu -i -p 'Find file:' -l 10 | xargs -r xdg-open
