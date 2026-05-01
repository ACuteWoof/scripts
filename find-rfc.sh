#!/bin/sh

cd ~/basement/books/rfc/txt/ && cat index.txt | dmenu -i -p 'Find RFC:' -l 10 | foot -e nvim $(sed -e "s/^/rfc/" -e "s/ .*/.txt/")
