#!/bin/bash

dir=$1
actual="$(pwd)"
shift
if [ $# -eq 0 ]
then
    ls $actual
else
    if [ -d $dir ]
    then
        for i in $@
        do
            if [ $i = "/s" ]
            then
                ls -R $dir
            elif [ $i = "/w" ]
            then
                ls -l $dir
            elif [ $i = "/p" ]
            then
                echo "p"
            fi
        done
    else
        ls .
    fi
fi