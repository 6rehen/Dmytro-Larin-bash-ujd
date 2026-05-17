#!/bin/bash

if [ $# -eq 1 ] && [ -d "$1" ] && [ -r "$1" ]
then
    echo "Ilość plików zwykłych: $(find "$1" -maxdepth 1 -type f | wc -l)"
    echo "Ilość katalogów: $(($(find "$1" -maxdepth 1 -type d | wc -l)-1))"
fi