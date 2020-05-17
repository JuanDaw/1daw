#!/bin/bash

# ???No consigo que se muestre de forma paginada

if [ $# -ne 0 ]
then
    while [ "$*" ]
    do
        contador=$contador+1
        var=`more $1`
        echo "$var"
        shift
    done
else
    echo "Debes introducir un argumento al menos"
fi