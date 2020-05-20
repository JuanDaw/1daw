#!/bin/bash

if [ $# -eq 2 ]
then
    if [ -f $1 ]
    then
        if [ -f $2 ]
        then
            lines1=`cat $1 | wc -l`
            lines2=`cat $2 | wc -l`
            words1=`cat $1 | wc -w`
            words2=`cat $2 | wc -w`
            charac1=`cat $1 | wc -m`
            charac2=`cat $2 | wc -m`
            bytes1=`cat $1 | wc -c`
            bytes2=`cat $2 | wc -c`
            echo "El fichero $1 tiene $lines1 líneas, $words1 palabras, $charac1 caracteres y $bytes1 bytes"
            echo "El fichero $2 tiene $lines2 líneas, $words2 palabras, $charac2 caracteres y $bytes2 bytes"
        else
            echo "$2 no existe o no es un fichero"
        fi
    else
        echo "$1 no existe o no es un fichero"
    fi
else
    echo "Debes introducir 2 argumentos"
fi