#!/bin/env bash

for dir in /home/acutewoof/gitbrowse;
do 
	[-d "$dir"] && cd "$dir" && git push github master
done;
