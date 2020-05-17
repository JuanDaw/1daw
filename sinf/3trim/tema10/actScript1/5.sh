#!/bin/bash

if [ $# -eq 1 ]
then
    if [ -d $1 ]
    then
        num=`ls $1 | wc -l`
        if [ $num -eq 0 ]
        then
            echo "El directorio $1 está vacío"
        else
            echo "El directorio $1 contiene algo"
        fi
    else
        echo "$1 no es un directorio"
    fi
else
    echo "Número de parámetros incorrecto"
fi