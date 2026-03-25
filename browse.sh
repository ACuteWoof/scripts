#!/bin/sh

grep http ~/basement/bookmarks.txt | dmenu -i -p 'Open qutebrowser:' -l 10 | xargs -I @ qutebrowser "@"
