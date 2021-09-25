#!/bin/bash

#Extend the program to take a range of number as input and output the Prime Numbers in that range.

echo "First no. should be smaller than second no."
read a
read b
for (( i=$a; i<=$b; i++ ))
do
	
	f=1
	for (( j=2; j<=$(( i / 2 )); j++ ))
	do
		if [ $(( i % j )) -eq 0 ]
		then
			f=0
		fi
	done

	if [ $f == 1 ]
	then
		echo "prime number are $i"
	fi
done
