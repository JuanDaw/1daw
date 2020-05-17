#!/bin/bash

if [ $# -eq 2 ]
then
    if [ -f $1 ]
    then
        if [ $2 = "A" ]
        then
            sort $1
        elif [ $2 = "Z" ]
        then
            sort -r $1
        else
            echo "El segundo parámetro solo puede ser una A o una Z"
        fi
    else
        echo "El primer parámetro no es un fichero"
    fi
else
    echo "Número de parametros incorrecto"
fi