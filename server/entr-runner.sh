#!/bin/sh

find /home/acutewoof/gitbrowse/me/gitbrowse | entr -n /home/acutewoof/update-gitbrowse.sh &

find /home/acutewoof/gitbrowse -type f -path "*/refs/heads/*" | while IFS= read -r file; do
    repo_dir=$(dirname "$(dirname "$(dirname "$file")")")
    echo "$file" | entr -n -s "cd '$repo_dir' && su acutewoof -c 'git push github --all --force'" &
done

wait
