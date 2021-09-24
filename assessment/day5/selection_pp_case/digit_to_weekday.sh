#Read a number and display the week day using case

#!/bin/bash

echo "Enter Single Digit Number (1-7):"
read num

case "$num" in
	1)	echo "Sunday";;
	2)	echo "Monday";;
	3)	echo "Tuesday";;
	4)	echo "Wednesday";;
	5)	echo "Thursday";;
	6)	echo "Friday";;
	7)	echo "Saturday";;
esac