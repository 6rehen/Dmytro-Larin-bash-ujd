#!/bin/bash

PLIK=$1

shift

for KATALOG in "$@"
  do
    cp "$PLIK" "$KATALOG/"
done