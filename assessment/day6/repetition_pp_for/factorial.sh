#!/bin/bash

#Write a program that computes a factorial of a number taken as input. 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

echo "Enter number"
read num

fac=1
for (( i=1; i<=num; i++ ));
do
	fac=$(( fac*i ))
done
echo $fac
