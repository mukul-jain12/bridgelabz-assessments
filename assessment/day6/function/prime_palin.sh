# Take a number from user and check if the number is a Prime then show that its palindrome is also prime
#  a. Write function check if number is Prime
#  b. Write function to get the Palindrome.
#  c. Check if the Palindrome number is also prime

#!/bin/bash

function prime_num() {
	f=0
	
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
		result=$( palindrome $number )
		echo "$number is a Prime number $result"
	fi
}


function palindrome() {
	rev=0
	num=$number

	while [ $number -gt 0 ]
	do
		rem=$((number % 10))
		rev=$((rev * 10 + rem))
		number=$((number / 10))
	done

	if [ $rev -eq $num ]
	then
		echo "and also a palindrome"
	else
		echo "but not a palindrome"
	fi
}


read number
result=$( prime_num $number )
echo "$result"

