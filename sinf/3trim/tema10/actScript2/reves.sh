#!/bin/bash

if [ $# -ne 0 ]
then
    printf "%s\n" "$@" | tac
else
    echo "Debes introducir un argumento al menos"
fi