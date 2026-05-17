#!/bin/bash

PLIK=$1

for KATALOG in `seq 2 $#`
  do
    cp "$PLIK" "${!KATALOG}/"
done