#!/bin/bash

if [ $# -ge 2 ]
then
    nom=$1
    shift
    dir=""
    for i in $@
    do
        if [ -d $i ]
        then
            dir="$dir $i"
        else
            echo "$i no se meterá en el paquete $nom porque no es un directorio"
        fi
    done
    tar -czf $nom.tgz$dir 2> /dev/null
else
    echo "Debes introducir 2 argumentos al menos"
fi