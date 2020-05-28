#!/bin/bash

opc=1
while [ $opc -ne 0 ]
do
    echo "1) Añadir permisos"
    echo "2) Eliminar permisos"
    echo "0) Salir"

    echo "Introduzca una opción: "
    read opc
    sleep 2
    clear

    echo "Introduzca nombre del fichero"
    read fich1

    case $opc in
        1)
        if [ -f $fich1 ]
        then
            echo ""
            for i in 1 2 3
            do

            done
        else
            echo "$fich1 no es un fichero"
        fi
        ;;
        2)
        if [ -f $fich1 ]
        then
            for i in 1 2 3
            do

            done
        else
            echo "$fich1 no es un fichero"
        fi
        ;;
        0)
        echo "Saliendo..."
        ;;
        *)
        echo "Opción no valida."
    esac
done