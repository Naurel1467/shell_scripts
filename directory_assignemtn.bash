#!/bin/bash

cd /home

for DIR in *
do 
    CHK=$(grep -c "DIR" /etc/passwd)
    if [ $CHK -ge 1 ]
    then    
        echo $DIR is asigned to user
    else
        echo $DIR not assigned to user
    fi
done    