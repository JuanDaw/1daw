#!/bin/bash

if [ $# -ne 0 ]
then
    for i in "$@"
    do
        if [ -f $i ]
        then
            more $i
        else
            echo "El argumento $i no es un fichero"
            break
        fi
    done
else
    echo "Debes introducir un argumento al menos"
fi