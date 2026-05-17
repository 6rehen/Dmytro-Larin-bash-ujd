#!/bin/bash

read PLIK

if [ -f "$PLIK" ] && [ -x "$PLIK" ]
then
    "./$PLIK"
    echo "Kod wyjścia: $?"
else
    echo "Plik nie istnieje, nie jest plikiem zwykłym lub nie ma praw wykonywania"
fi