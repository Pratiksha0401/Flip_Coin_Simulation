#!/bin/bash -x
H=1
T=0
x=$((RANDOM%2))
if [ $x -eq $H ]
then
        echo "Heads"
else
        echo "Tails"
fi
