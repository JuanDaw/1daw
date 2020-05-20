#!/bin/bash

if [ $# -eq 1 ]
then
    if [ -d $1 ]
    then
        date=`date +%Y%m%d`
        format=`echo $1 | tr -d "/."`
        name="$date-$format.tgz"
        tar -czf $name $1 2> /dev/null
        echo "Ha sido empaquetado correctamente $name"
    else
        echo "$1 no es un directorio"
    fi
else
    echo "Debes introducir 1 solo argumentos"
fi