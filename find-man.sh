#!/bin/sh

man -k . | dmenu -i -p 'Find manpage:' -l 10 | sed 's/(.*//' | xargs -r foot -e man
