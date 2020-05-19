#!/bin/bash

if [ $# -ge 2 ]
then
    if [ -d $1 ]
    then
        dir=$1
        shift
        for i in "$@"
        do
            if [ -f $i ]
            then
                cp $i $dir
            else
                echo "El argumento $i no es un fichero y no ha sido copiado al directorio $dir"
            fi
        done
    else
        echo "El primer argumento debe ser un directorio"
    fi
else
    echo "Debes introducir 2 argumentos al menos"
fi