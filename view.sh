#!/bin/sh

notify-send "Loading zathura..."
URL="$(echo "$(xsel -o -b)")"
FILE="${URL##*/}"
ROOT="$HOME/basement/web/"
mkdir -p "$ROOT"
wget "$URL" -O "$ROOT$FILE" 
TYPE="$(file "$ROOT$FILE")"
if [ "$TYPE" = "application/pdf" ] then
	zathura "$ROOT$FILE"
else 
	pandoc "$ROOT$FILE" --embed-resuorces -s -o pdf | zathura -
fi
notify-send "Zathura closed."
