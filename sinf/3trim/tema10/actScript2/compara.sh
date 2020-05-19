#!/bin/bash

if [ $# -eq 2 ]
then
    if [ -f $1 ]
    then
        if [ -f $2 ]
        then

        else
            echo "$2 no existe o no es un fichero"
        fi
    else
        echo "$1 no existe o no es un fichero"
    fi
else
    echo "Debes introducir 2 argumentos"
fi

# TODO
# Mostrar comparativa