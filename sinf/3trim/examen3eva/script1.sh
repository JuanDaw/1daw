#!/bin/bash

if [ $# -eq 3 ]
then
    if [ -f $1 ]
    then
        while read line
        do
            while read word
            do
                if [ line == $2 ]
                then
                    word=$3
                fi
            done
        done
    else
        echo "$1 no es un fichero"
    fi
    cat $word
else
    echo "Debes introducir 3 argumentos"
fi