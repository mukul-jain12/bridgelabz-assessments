#!/bin/bash


declare -A dice

one=1
two=1
three=1
four=1
five=1
six=1

c=0

while [ $one -le 10 ] && [ $two -le 10 ] && [ $three -le 10 ] && [ $four -le 10 ] && [ $five -le 10 ] && [ $six -le 10 ]
do
	dice_num=$(( RANDOM%6 + 1))

	dice[$c]+=$((dice_num))

	case $dice_num in
		1)
			echo $dice_num $one
			one=$((one+1))
			;;
		2)
			echo $dice_num $two
			two=$((two+1))
			;;
		3)
			echo $dice_num $three
			three=$((three+1))
			;;
		4)
			echo $dice_num $four
			four=$((four+1))
			;;
		5)
			echo $dice_num $five
			five=$((five+1))
			;;
		6)
			echo $dice_num $six
			six=$((six+1))
			;;
	esac
	c=$((c+1))
done

for i in ${dice[@]}
do
	echo "'"$i"'"
done
