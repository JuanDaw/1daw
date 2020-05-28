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
                ls $dir
            elif [ $i = "/p" ]
            then
                ls -l $dir
            fi
        done
    else
        ls .
    fi
fi