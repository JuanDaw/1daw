#!/bin/bash

if [ $# -ne 0 ]
then
    for i in $@
    do
        if [ -f $i ]
        then
            var=`ls -l $i | cut -d" " -f5`
            if [ $var -ge 50 ]
            then
                rm $i
                echo "El fichero $1 se ha borrado"
            else
                echo "El fichero ocupa menos de 50 bytes y no se ha borrado"
            fi
        elif [ -d $i ]
        then
            read -p "¿Borrar el directorio $i? Y/N: " opc
            if [ opc="Y" ]
            then
                rm -r $i
                echo "El directorio $i se ha borrado"
            elif [ opc="N" ]
            then
                echo "El directorio $i no se ha borrado"
            else
                echo "Debes introducir Y o N"
            fi
        else
            echo "No se procesa el argumento: $i"
        fi
    done
else
    echo "Debe introducir como mínimo un argumento"
fi