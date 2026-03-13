#!/bin/sh

notify-send "Loading zathura..."
URL="$(echo "$(xsel -o -b)")"
FILE="${URL##*/}"
ROOT="$HOME/basement/PDF/"
mkdir -p "$ROOT"
wget "$URL" -O "$ROOT$FILE" && zathura "$ROOT$FILE"
notify-send "Zathura closed."
