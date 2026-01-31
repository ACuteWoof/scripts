#!/bin/env bash

cd /home/acutewoof/gitbrowse;

for dir in /home/acutewoof/gitbrowse/*;
do 
	[ -d "$dir" ] && cd "$dir" && su acutewoof -c "git push github master"
done;
