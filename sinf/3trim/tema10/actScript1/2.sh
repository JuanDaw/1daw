#!/bin/bash

echo -n "Introduzca nombre del fichero: "
read file
if [ -f $file ]
then
    chmod u+x $file 2> /dev/null
    if [ $? -eq 0 ]
    then
        perm=`ls -l $file | cut -d " " -f1`
        echo "Los permisos de $file son $perm"
    else
        echo "Se ha producido un error asignarle permisos"
    fi
else
    echo "No existe el fichero $file"
fi