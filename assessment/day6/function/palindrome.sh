#!/bin/bash

# Write a function to check if the two numbers are Palindromes

function palindrome() {
	rev=0
	number=$num

	while [ $num -gt 0 ]
	do
		rem=$((num % 10))
		rev=$((rev * 10 + rem))
		num=$((num / 10))
	done

	if [ $rev -eq $number ]
	then
		echo "$number is a palindrome"
	else
		echo "$number is not a palindrome"
	fi
}

echo "Enter number"
read num

result=$( palindrome $num )
echo "$result"