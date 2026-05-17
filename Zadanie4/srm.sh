#!/bin/bash

find "$HOME/trash" -maxdepth 1 -type f -mtime +0 -delete

if [ $# -eq 0 ]
then
    exit 0
fi

for plik in "$@"
do
    if [ -f "$plik" ]
    then
        ARCHIWUM="$(basename "$plik")_$(date +%Y%m%d_%H%M%S).tar.gz"

        tar -czf "$HOME/trash/$ARCHIWUM" "$plik" 2>/dev/null

        if [ $? -eq 0 ]
        then
            rm "$plik"
        fi
    fi
done