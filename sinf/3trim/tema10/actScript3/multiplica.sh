#!/bin/bash

read -p "Introduce el numero para mostrar la tabla de multiplicar: " num

for i in `seq 1 10`
do
    # echo "$num x $i= `expr $num \* $i`"
    res=`expr $num \* $i`
    echo "$num x $i = $res"
done