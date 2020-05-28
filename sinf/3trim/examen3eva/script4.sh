#!/bin/bash

create=0
nocreate=""

if [ $# -ne 0 ]
then
    while [ "$*" ]
    do
        var=`cat /etc/passwd | grep $1 | wc -l`
        if [ $var -ne 0 ]
        then
            nocreate="$nocreate $1,"
            shift
        else
            create=`expr $create + 1`
            useradd -d /home/$1 -m -g usuarios $1 2> /dev/null
            echo "$1:1234" | chpasswd -m 2> /dev/null
            shift
        fi
    done
    echo "Se han creado $create usuarios."
    echo "Los usuarios $nocreate no se han creado porque ya existían."
else
    echo "Debes introducir un argumento al menos"
fi