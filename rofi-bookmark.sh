#!/bin/sh

if [ "$ROFI_RETV" = "1" ] || [ "$ROFI_RETV" = "2" ]
then
	echo "$@" | wl-copy
	notify-send "Copied $@ to clipboard."
	exit 0
fi

cat $HOME/basement/bookmarks.txt
