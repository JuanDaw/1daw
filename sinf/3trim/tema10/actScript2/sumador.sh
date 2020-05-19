#!/bin/bash

if [ $# -ge 2 ]
then
    for i in "$@"
    do
        es_numero='^[0-9]+$'
        if [ "1" = '^[0-9]+$' ]
        then
            #acumulador=$(($acumulador + $i))
            acumulador=$(expr $acumulador + $i)
        else
            echo "El argumento $i no es un número"
            break
        fi
    done
    echo "$acumulador"
else
    echo "Debes introducir 2 argumento al menos"
fi


# es_numero='^-?[0-9]+([.][0-9]+)?$'
# ??? Comprobar que es un número los argumentos pasados