#!/bin/bash -x
H=1
T=0
countH=0
countT=0
for (( i=1;i<=42;i++ ))
do
	x=$((RANDOM%2))
	if [ $x -eq $H ]
	then
		if [ $countH -eq 21 ]
		then
			break
		fi
		((countH++))
	else
		if [ $countT -eq 21 ]
		then
			break
		fi
		((countT++))
	fi
done

if [ $countH -eq $countT ]
then
	echo "Tie between Head and Tail i.e 21 all"
elif [ $countH -gt $countT ]
then
	result1=$(($countH-$countT))
	echo "Head wins $countH times and won by $result1"
else
	result2=$(($countT-$countH))
	echo "Tail wins $countT times and won by $result2"
fi
