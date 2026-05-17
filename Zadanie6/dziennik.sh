#!/bin/bash

BAZA_DANYCH="dziennik.txt"

if [ $# -eq 0 ]
then
    echo "Sposób użycia:"
    echo "  $0 add \"Treść wpisu\" - dodaje nowy wpis"
    echo "  $0 show YYYY-MM-DD    - wyświetla wpisy z danego dnia"
    exit 1
fi

case "$1" in
    "add")
        if [ -z "$2" ]
        then
            echo "Błąd: Brak treści wpisu. Przykład: $0 add \"Moja wiadomosc\""
            exit 1
        fi

        DATA=$(date +%Y-%m-%d)
        TRESC="$2"
        
        echo "[$DATA] $TRESC" >> "$BAZA_DANYCH"
        echo "Dodano wpis do dziennika."
        ;;
        
    "show")
        if [ -z "$2" ]
        then
            echo "Błąd: Brak podanej daty. Przykład: $0 show 2026-05-17"
            exit 1
        fi
        
        SZUKANA_DATA="$2"
        
        if [ ! -f "$BAZA_DANYCH" ]
        then
            echo "Dziennik jest pusty (brak pliku $BAZA_DANYCH)."
            exit 0
        fi
        
        echo "Wpisy z dnia $SZUKANA_DATA:"
        
        grep "^\[$SZUKANA_DATA\]" "$BAZA_DANYCH"
        
        if [ $? -ne 0 ]
        then
            echo "Brak wpisów z tego dnia."
        fi
        ;;
        
    *)
        echo "Błąd: Nieznana operacja '$1'. Użyj 'add' lub 'show'."
        exit 1
        ;;
esac