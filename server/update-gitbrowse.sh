#!/bin/sh

cd /home/acutewoof/program/gitbrowse
su acutewoof -c "git pull --rebase"
su acutewoof -c "go build"
systemctl restart gitbrowse
