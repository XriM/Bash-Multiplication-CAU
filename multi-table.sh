#!/bin/bash

if [ $# -le 1 ]
    then
        echo "Invalid input"
        exit 1
fi
if [ $# -ge 3 ]
    then
        echo "Invalid input"
        exit 1
fi
if [ $1 -le 0 ]
    then
        echo "Input must be greater than 0"
        exit 1
fi
if [ $2 -le 0 ]
    then
        echo "Input must be greater than 0"
        exit 1
fi

rows="$1"
columns="$2"
r=1
c=1

while [ $c -le $columns ]
do
    while [ $r -le $rows ]
    do
        echo -ne "$c*$r=$(( c * r))\t"
        r=$(( r + 1))
    done
    echo ""
    r=1
    c=$(( c + 1))
done