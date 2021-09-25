#Write a program that takes a year as input and outputs the Year is a Leap Year or not a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless divisible by 400.

#!/bin/bash

read num


if [ $((num%4)) -eq 0 ]
then
		if [ $((num%100)) -eq 0 ]
		then
				if [ $((num%400)) -eq 0 ]
				then
					echo "$num is a Leap year"
				else
					echo "$num is Not a leap year"
				fi
		else
			echo "$num is a leap year"
		fi
else
	echo "Not a leap year"
fi
