# Write a program that read 5 random 2 digit value, then find their sum and avarage.

#!/bin/bash
echo "Enter number:"
read a
sum=0
echo "$a Random generated numbers"
for (( i=a; i >= 1; i-- ));
do
	b=`echo $((RANDOM%10))`
	echo $b
	sum=$((sum+b))
done
echo "Sum = "$sum "and Avarage = "$((sum/a))