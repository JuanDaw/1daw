#!/bin/bash

read -p "Introduzca un numero: " argumento
es_numero='^-?[0-9]+([.][0-9]+)?$'
if ! [[ $argumento =~ $es_numero ]] ; then
   echo "ERROR: No es un número"
else
    var=$(($argumento % 101))
    if [ $var -eq 0 ]; then
        echo "$argumento si es divisible entre 101"
    else
        echo "El numero $argumento no es divisible entre 101"
    fi
fi