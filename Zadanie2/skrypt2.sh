#!/bin/bash

read PLIK

if [ ! -e "$PLIK" ]
then
    echo "Zbiór nie istnieje"
elif [ -d "$PLIK" ]
then
    echo "Zbiór jest katalogiem"
elif [ ! -f "$PLIK" ]
then
    echo "Zbiór nie jest plikiem zwykłym"
elif [ ! -r "$PLIK" ]
then
    echo "Zbiór nie można czytać"
else
    cat "$PLIK"
fi
