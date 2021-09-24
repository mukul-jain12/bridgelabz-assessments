#!/bin/bash
array=(1 2 -3 -11 5 6)
for (( i=0; i<`expr ${#array[@]}-2`; i++ ))
do
	for (( j=i+1; j<`expr ${#array[@]}-1`; j++ ))
	do
		for (( k=i+2; k<${#array[@]}; k++ ))
		do
			if [ `expr ${array[i]} + ${array[j]} + ${array[k]}` -eq 0 ]
			then
				echo "${array[i]} ${array[j]} ${array[k]}"
			fi
		done
	done
done