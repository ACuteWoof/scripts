#!/bin/sh

find /home/acutewoof/gitbrowse/gitbrowse | entr -n /home/acutewoof/update-gitbrowse.sh &
find /home/acutewoof/gitbrowse | entr -n /home/acutewoof/github-update.sh
