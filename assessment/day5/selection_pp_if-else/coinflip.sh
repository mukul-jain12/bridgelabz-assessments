#Write a program to simulate a coin flip and print out "Heads" or "Tails" accordingly.

#!/bin/bash

i=$((RANDOM%2))

echo $i
if [ $i -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
