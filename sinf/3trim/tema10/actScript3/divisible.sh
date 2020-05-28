#!/bin/bash

read -p "Introduce un numero: " num

es_numero='^-?[0-9]+([.][0-9]+)?$'
if ! [[ $num =~ $es_numero ]] 2> /dev/null
then
    var=`expr $num % 101`
    if [ $var -eq 0 ]
    then
        echo "El número $num es divisible entre 101"
    else
        echo "El número $num no es divisible entre 101"
    fi
else
    echo "$num no es un número. Debe introducir un número que sea divisible entre 101"
fi