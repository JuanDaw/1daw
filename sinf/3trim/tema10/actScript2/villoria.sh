#!/bin/bash

if [ $# -eq 2 ]
then
    if [ -d $1 ]
    then
        if [ -e $2 ]
        then
            find $1 -type f -name $2
            echo "El parámetro $2 existe como fichero en el directorio $1"
        else
            echo "El parámetro $2 no existe como fichero en el directorio $1"
        fi
    else
        echo "El parámetro $1 no es un directorio"
    fi
else
    echo "Se debe introducir un mínimo de dos parámetros"
fi