#!/bin/bash

read PLIK

if [ ! -e "$PLIK" ]
then
    echo "Plik $PLIK nie istnieje"
elif [ -d "$PLIK" ]
then
    echo "Plik $PLIK istnieje i jest katalogiem"
elif [ -f "$PLIK" ]
then
    echo "Plik $PLIK istnieje i jest plikiem zwykłym"
fi