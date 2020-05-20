#!/bin/bash

if [ $# -eq 1 ]
then
    if [ -d $1 ]
    then
        echo "$1 es un directorio"
    else
        if [ -f $1 ]
        then
            echo "$1 es un fichero"
        else
            echo "$1 no existe"
        fi
    fi
else
    echo "Debes introducir 1 argumento"
fi

# ??? Tipo de archivo