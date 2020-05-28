#!/bin/bash

opcion=0

while [ !opcion=4 ]
do
    read -p "Introduce un número dependiendo de la opción que desees:
    1) Copia un fichero a otro fichero
    2) Crea un directorio dentro de otro directorio
    3) Cambiar el nombre de un fichero
    4) Salir
    
    Opcion: " opcion

    case $opcion in
        1) read -p "Introduce el fichero original: " fich1
        read -p "Introduce el fichero a crear: " fich2
        if [ -f $fich1 ]
        then
            cp $fich1 $fich2
        else
            echo "El parámetro $fich1 no es un fichero"
        fi ;;
        2) read -p "Introduce el directorio original: " dir1
        read -p "Introduce el directorio padre: " dir2
        if [ -d $dir2 ]
        then
            if [ -d $dir1 ]
            then
                mv $dir1 $dir2
            else
                mkdir $dir1
                mv $dir1 $dir2
            fi
        else
            mkdir -p $dir2/$dir1
        fi ;;
        3) read -p "Introduce el nuevo nombre para el fichero" nom
        read -p "Introduce el fichero a cambiar: " fich
        if [ -f fich ]
        then
            mv $fich $nom
        else
            echo "El parámetro $fich no es un fichero"
        fi
    esac
done