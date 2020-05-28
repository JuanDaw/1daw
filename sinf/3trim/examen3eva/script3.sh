#!/bin/bash

user=`whoami`
date=`date +%e" "%b" "%Y`
procesos=`ps ux | grep $user | tr -s " " | cut -d " " -f 2,8,11 | head -10`

echo "$date
---------------
$procesos

---------------" >> procesos.txt

#CRONTAB

#0 */3 * 9-6 1-5 /home/alonso/1daw/sinf/3trim/examen3eva/script3.sh