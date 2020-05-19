#!/bin/bash

if [ $# -ne 0 ]
then
    while [ "$*" ]
    do
        if [ -f $1 ]
        then
            contador=$contador+1
            more $1
            shift
        else
            echo "El argumento $1 no es un fichero"
            break
        fi
    done
else
    echo "Debes introducir un argumento al menos"
fi