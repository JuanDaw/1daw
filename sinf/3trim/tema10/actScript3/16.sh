#!/bin/bash

clear
opc=1
while [ $opc != 0 ]
do
    echo "1): Copia un archivo a otro directorio"
    echo "2): Mueve un archivo a otro directorio"
    echo "3): Cambia el nombre de un archivo por otro"
    echo "4): Elimina un archivo"
    echo "5): Salir"

    read -p "Eliga una opción: " opc
    case $opc in
    1)
    read -p "Introduzca el archivo origen: " fich
    read -p "Introduzca el directorio destino: " dir
    if [ -f $fich ]; then
        cp -r $fich $dir
        if [ $? == 1 ]; then
            echo "El argumento $fich no es un archivo"
        else
            echo "Archivo $dir copiado"
        fi
    else
        echo "El argumento $fich no es un fichero"
    fi
    ;;
    2)
    read -p "Introduzca el archivo a mover: " fich1
    read -p "Introduzca la ruta de destino: " dir1
    if [ -f $fich1 ]; then
        mv $fich1 $dir1
        echo "Movido el fichero $fich1 al directorio $dir1"
    else
        echo "$fich1 No es un fichero"
    fi
    ;;
    3)
    read -p "Introduzca un archivo: " fich2
    read -p "Introduzca su nuevo nombre: " name
    if ! [ -f $fich2 ]; then
        echo "El fichero $fich2 no existe o no es un fichero valido"
    else
        mv $fich2 $name
        echo "El nuevo nombre es $name"
    fi
    ;;
    4)
    read -p "Introduce la ruta del archivo a eliminar: " fich3
    if [ -f $fich3 ]; then
        rm $fich3
        echo "$fich3 eliminado"
    else
        echo "El fichero no existe, no es un archivo valido o no tienes permisos para eliminarlo"
    fi
    ;;
    5)
    exit
    ;;
    *)
    clear
    echo "Opcion incorrecta" ;;
    esac
done