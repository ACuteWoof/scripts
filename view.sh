#!/bin/sh

notify-send "Loading zathura..."
URL="$(echo "$(xsel -o -b)")"
FILE="${URL##*/}"
ROOT="$HOME/basement/web/"
mkdir -p "$ROOT"
wget "$URL" -O "$ROOT$FILE" 
TYPE="$(file "$ROOT$FILE")"
echo $TYPE
if [ "$TYPE" = "application/pdf" ] 
then
	zathura "$ROOT$FILE"
else 
	pandoc "$ROOT$FILE" --embed-resources -s -t pdf | zathura -
fi
notify-send "Zathura closed."
