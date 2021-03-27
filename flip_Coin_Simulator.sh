#!/bin/bash -x
H=1
T=0
countH=0
countT=0
read -p "Enter number for which you want to flip a coin : " num
for (( i=1;i<=$num;i++ ))
do
	x=$((RANDOM%2))
	if [ $x -eq $H ]
	then
		((countH++))
	else
		((countT++))
	fi
done
echo "Head wins $countH times"
echo "Tail wins $countT times"
