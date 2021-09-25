#!/bin/bash

#Write a program that takes a command-line argument n and prints a table of the powers of 2 that are less than or equal to 2^n till 256 is reached..

read n

power=1
i=1

while (( $i <= $n ))
do
	if [ $power -gt 256 ]
	then
		break
	else
		echo "2^"$i "=" $power
		power=$((2*power))
	fi
	
	i=$((i+1))
done
