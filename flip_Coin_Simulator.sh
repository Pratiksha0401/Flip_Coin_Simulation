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
	for (( j=1;j<=11;j++ ))
	do
		x=$((RANDOM%2))
		if [ $x -eq $H ]
		then
			((countH++))
			result1=$(($countH-$countT))
			if [ $result1 -eq 2 ]
      	then
				echo "and Head won by $result1 points"
         	break
			fi
	 	else
			((countT++))
			result2=$(($countT-$countH))
      	if [ $result2 -eq 2 ]
      	then
				echo "and Tail won by $result2 points"
         	break
      	fi
   	fi
	done
elif [ $countH -gt $countT ]
then
	result3=$(($countH-$countT))
	echo "Head wins $countH times and won by $result3 points"
else
	result4=$(($countT-$countH))
	echo "Tail wins $countT times and won by $result4 points"
fi
