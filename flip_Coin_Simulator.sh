#!/bin/bash -x
H=1
T=0
x=$((RANDOM%2))
if [ $x -eq $H ]
then
        echo "Head wins"
else
        echo "Tail wins"
fi
