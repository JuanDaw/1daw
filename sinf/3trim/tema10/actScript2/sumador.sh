#!/bin/bash

if [ $# -ge 2 ]
then
    for i in "$@"
    do
        es_numero='^-?[0-9]+$'
        if [[ $i =~ $es_numero ]]
        then
            acumulador=$(($acumulador + $i))
        else
            no_num="$no_num $i"
        fi
    done
    echo "Los siguientes argumentos no son números enteros:$no_num"
    echo "Resultado suma: $acumulador"
else
    echo "Debes introducir 2 argumento al menos"
fi


# es_numero='^-?[0-9]+([.][0-9]+)?$'