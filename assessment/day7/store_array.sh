#!/bin/bash

# Write a program in the following steps
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

array=()
for (( i=0; i<10; i++ ))
do
	a=$(( ( RANDOM % 899) + 100 ))
	array[((i))]+=$a
done
echo "${array[@]} is array" 

max_value=${array[0]}
min_value=${array[0]}
sec_max='unset'
sec_min='unset'
for i in "${array[@]}"
do
	if [ $i -gt $max_value ]
	then
		sec_max=$max_value
		max_value=$i
	fi
	if [ $i -le $min_value ]
	then
		sec_min=$min_value
		min_value=$i
	fi
done
echo "$sec_max is max and $sec_min is min"