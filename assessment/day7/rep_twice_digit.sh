#!/bin/bash

#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array

array=()
for i in `seq 0 100`
do
	if [ $((i%11)) -eq 0 ]
	then
		array+=($i)
	fi
done
echo "${array[@]}"