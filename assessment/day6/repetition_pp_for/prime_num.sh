#!/bin/bash

# Write a program that takes a input and determines if the number is a prime.

read number

f=0

#running a loop from 2 to number/2
for (( i=2; i<=$(( number / 2 )); i++ ))
do
	if [ $(( number % i )) -eq 0 ]
	then
		f=1
	fi
done

if [ $f -eq 1 ]
then
	echo "$number is Not a Prime number."
else
	echo "$number is a Prime number."
fi

