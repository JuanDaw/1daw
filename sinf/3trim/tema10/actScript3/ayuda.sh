#!/bin/bash

if [ $# -eq 1 ]
then
    if [ $1 = "-h" ]
    then
        echo "Se le tiene que pasar un fichero como argumento para que el script funcione"
    elif [ -f $1 ]
    then
        var=`ls -l $1 | cut -d " " -f1`
        echo "El fichero existe y tiene los siguientes permisos: $var"
    else
        echo "Argumento no válido"
    fi
else
    echo "Debe introducir un solo argumento"
fi