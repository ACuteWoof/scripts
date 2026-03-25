#!/bin/sh

cd ~/basement/books/rfc/txt/ && cat index.txt | dmenu -i -p 'Find file:' -l 10 | uxterm -e nvim $(sed -e "s/^/rfc/" -e "s/ .*/.txt/")
