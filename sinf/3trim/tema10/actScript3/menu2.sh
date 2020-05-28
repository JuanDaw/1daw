#!/bin/bash

opc=1
while [ $opc -ne 0 ]
do
    echo "1: copiar un directorio a otro directorio"
    echo "2: listar los ficheros del directorio /etc y almacenarlo en un fichero"
    echo "0: salir"

    echo "Introduzca una opción: "
    read opc

    case $opc in
        1)
        echo "Introduce nombre del directorio origen: "
        read dir1
        echo "Introduce directorio donde quieres alojar el directorio origen $dir1: "
        read dir2
        if [ -d $dir1 ]
        then
            if [ -d $dir2 ]
            then
                cp -r $dir1 $dir2
            else
                echo "$dir2 no es un directorio"
            fi
        else
            echo "$dir1 no es un directorio"
        fi
        ;;
        2)
        echo "Introduce el caracter por el que empieza de los archivos a listar del directorio /etc: "
        read char1
        echo "Introduce fichero en el que incluir la lista: "
        read fich1
        if [ $char1 =~ [a-zA-Z0-9] ]
        then
            find /etc -type f -maxdepth 1 -name "$char1*" > $fich1
        else
            echo "Ningún archivo comienza por $char1"
        fi
        ;;
        0)
        echo "Saliendo..."
        ;;
        *)
        echo "Opción no valida."
    esac
done