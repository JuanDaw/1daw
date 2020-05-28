#!/bin/bash
opc=0
while [ !opc=3 ]
do
    echo "a) Cambiar propietario"
    echo "b) cambiar permiso"
    echo "s) Salir"

    echo "Introduce una opción"
    read opc

    case $opc in
    a)
    echo "Introduce un fichero o un directorio: "
    read fichdir
    echo "Introduce el usuario a quien quieres poner de propietario: "
    read own
    if [ -f $fichdir || -d $fichdir ]
    then
        chown -R $own $fichdir
    else
        echo "$fichdir no es un fichero o no es un directorio"
    fi
    ;;
    b)
    echo "Introduce un directorio: "
    read dir1
    echo "Introduce un permiso (1: leer, 2: escribir, 3: ejecutar): "
    read perm
    echo "Introduce un usuario: "
    read user
    if [ -d $dir1 ]
    then
        if [ $perm=1 ]
        then
            chown -R $user $dir
            chmod u+r $dir1
            echo "Permiso de lectura concedido"
        elif [ $perm=2 ]
        then
            chown -R $user $dir
            chmod u+w $dir1
            echo "Permiso de escritura concedido"
        elif [ $perm=3 ]
        then
            chown -R $user $dir
            chmod u+x $dir1
            echo "Permiso de ejecución concedido"
        else
            echo "Debes elegir entre 1, 2 y 3"
        fi
    else
        echo "$dir1 no es un directorio"
    fi
    ;;
    s)
    echo "Saliendo..."
    sleep 2
    clear
    break
    ;;
    *)
    echo "Eliga una opción correcta"
    sleep 2
    clear
    esac
done