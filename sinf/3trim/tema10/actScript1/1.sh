#!/bin/bash

if [ $# -eq 1 ]
then
    if [ -d $1 ]
    then
        echo "Ya existe el directorio $1"
    else
        mkdir $1
        if [ $? -eq 0 ]
        then
            echo "Directorio $1 creado correctamente"
        else
            echo "Se ha producido un error"
        fi
    fi
else
    echo "Número de parametros incorrecto"
fi