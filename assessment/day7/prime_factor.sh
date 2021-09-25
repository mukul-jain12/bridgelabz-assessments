#!/bin/bash

# Extend the Prime Factorization Program to store all the Prime Factors of a number n into an array and finally display the output.

echo "Enter an integer:"
read input

if [ $input -lt 1 ]
then
	echo "Not valid"
	exit 1
fi

count=0
flag=0
array=()

echo "Prime factors of $input are: "
for (( i=2; i<$input; i++ ))
do
	if [ $(( input % i )) -eq 0 ]
	then
		factor=$i

		for (( j=2; j<=`expr $factor / 2`; j++ ))
		do
			flag=0
			if [ `expr $factor % $j` -eq 0 ]
			then
				flag=1
				break
			fi
		done
		
		if [ $flag -eq 0 ]
		then
			echo "$factor"
			array+=($factor)
			count=1
		fi
	fi
done

echo ${array[@]}
if [ $count -eq 0 ]
then
	echo "no prime factors found"
fi