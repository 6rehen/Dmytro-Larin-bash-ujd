#!/bin/bash

echo "Ilość argumentów: $#"

if [ $# -gt 2 ]
then
    echo "1 argument: $1; 2 argument: $2; 3 argument: $3;"
fi