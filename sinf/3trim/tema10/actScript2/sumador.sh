#!/bin/bash

if [ $# -ge 2 ]
then
    for i in "$@"
    do
        acumulador=$(($acumulador + $i))
    done
    echo "$acumulador"
else
    echo "Debes introducir 2 argumento al menos"
fi


# es_numero='^-?[0-9]+([.][0-9]+)?$'
# ??? Comprobar que es un número los argumentos pasados