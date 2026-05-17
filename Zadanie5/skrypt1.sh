#!/bin/bash

if [ -e "BACKUP" ] && [ ! -d "BACKUP" ]
then
    echo "BACKUP już istnieje"
    exit 1
fi

if [ ! -d "BACKUP" ]
then
    mkdir "BACKUP"
    echo "Utworzono BACKUP"
fi


for plik in *~
do
    if [ -f "$plik" ]
    then
        cp "$plik" "BACKUP/"
        echo "Skopiowano: $plik"
    fi
done

# Cykliczne uruchamianie skryptu z 4 zadania:
# */15 * * * * /mnt/c/Users/ladmo/Desktop/ujd/sem4/Systemy operacyjne/Zadanie4/srm.sh
# 5 0 * * * /mnt/c/Users/ladmo/Desktop/ujd/sem4/Systemy operacyjne/Zadanie4/srm.sh
# 0 23 * * 5 /mnt/c/Users/ladmo/Desktop/ujd/sem4/Systemy operacyjne/Zadanie4/srm.sh
# 0 0 1 * * /mnt/c/Users/ladmo/Desktop/ujd/sem4/Systemy operacyjne/Zadanie4/srm.sh