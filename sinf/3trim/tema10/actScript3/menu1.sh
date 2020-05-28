#!/bin/bash

opc=1
while [ $opc -ne 0 ]
do
    echo "1: crea un fichero con el mismo contenido de otro fichero"
    echo "2: crea un directorio dentro de otro directorio"
    echo "3: cambia el nombre de un fichero por el nombre de otro"
    echo "0: salir"

    echo "Introduzca una opción: "
    read opc

    case $opc in
        1)
        echo "Introduce el fichero original: "
        read fich1
        echo "Introduce el fichero a crear: "
        read fich2
        if [ -f $fich1 ]
        then
            cp $fich1 $fich2
        else
            echo "$fich1 no es un fichero"
        fi
        ;;
        2)
        echo "Introduce nombre del directorio a crear: "
        read dir1
        echo "Introduce directorio donde quieres alojar $dir1: "
        read dir2
        if [ -d $dir2 ]
        then
            if [ -d $dir1 ]
            then
                mv $dir1 $dir2
            else
                mkdir $dir1
                mv $dir1 $dir2
            fi
            echo "$dir1 se ha creado correctamente y alojado en $dir2"
        else
            mkdir -p $dir2/$dir1
            echo "$dir1 se ha creado correctamente dentro de $dir2"
        fi
        ;;
        3)
        echo "Introduce el fichero al que quieres cambiar el nombre: "
        read fich1
        echo "Introduce el nombre al cual quieres renombrar el fichero $fich1: "
        read fich2
        if [ -f $fich1 ]
        then
            mv $fich1 $fich2
            echo "Fichero renombrado correctamente"
        else
            echo "$fich1 no es un fichero"
        fi
        ;;
        0)
        echo "Saliendo..."
        ;;
        *)
        echo "Opción no válida."
    esac
done