#!/bin/bash

if [ $# -eq 1 ]
then
    if [ -d $1 ]
    then
        num=`ls -l $1 | grep "^-r" | wc -l`
        echo "El directorio $1 tiene $num ficheros con permisos de lectura"
    else
        echo "$1 no es un directorio"
    fi
else
    echo "Número de parámetros incorreto"
fi