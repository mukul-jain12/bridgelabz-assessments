# Write a program that reads 5 Random 3 Digit values and then outputs the minimum and the maximum value

#!/bin/bash

no_1=$(( ( RANDOM % 899) + 100 ))
no_2=$(( ( RANDOM % 899) + 100 ))
no_3=$(( ( RANDOM % 899) + 100 ))
no_4=$(( ( RANDOM % 899) + 100 ))
no_5=$(( ( RANDOM % 899) + 100 ))

echo $no_1 $no_2 $no_3 $no_4 $no_5 "are random generated no."

if [ $no_1 -ge $no_2 ] && [ $no_1 -ge $no_3 ] && [ $no_1 -ge $no_4 ] && [ $no_1 -ge $no_5 ]
then
    echo $no_1

elif [ $no_2 -ge $no_1 ] && [ $no_2 -ge $no_3 ] && [ $no_2 -ge $no_4 ] && [ $no_2 -ge $no_5 ]
then
    echo $no_2
	
elif [ $no_3 -ge $no_1 ] && [ $no_3 -ge $no_2 ] && [ $no_3 -ge $no_4 ] && [ $no_3 -ge $no_5 ]
then
    echo $no_3

elif [ $no_4 -ge $no_1 ] && [ $no_4 -ge $no_2 ] && [ $no_4 -ge $no_3 ] && [ $no_4 -ge $no_5 ]
then
    echo $no_4
	
elif [ $no_5 -ge $no_1 ] && [ $no_5 -ge $no_2 ] && [ $no_5 -ge $no_3 ] && [ $no_5 -ge $no_4 ]
then
    echo $no_5
fi


if [ $no_1 -le $no_2 ] && [ $no_1 -le $no_3 ] && [ $no_1 -le $no_4 ] && [ $no_1 -le $no_5 ]
then
    echo $no_1

elif [ $no_2 -le $no_1 ] && [ $no_2 -le $no_3 ] && [ $no_2 -le $no_4 ] && [ $no_2 -le $no_5 ]
then
    echo $no_2
	
elif [ $no_3 -le $no_1 ] && [ $no_3 -le $no_2 ] && [ $no_3 -le $no_4 ] && [ $no_3 -le $no_5 ]
then
    echo $no_3

elif [ $no_4 -le $no_1 ] && [ $no_4 -le $no_2 ] && [ $no_4 -le $no_3 ] && [ $no_4 -le $no_5 ]
then
    echo $no_4
	
elif [ $no_5 -le $no_1 ] && [ $no_5 -le $no_2 ] && [ $no_5 -le $no_3 ] && [ $no_5 -le $no_4 ]
then
    echo $no_5
fi



#-------------------------------------------------------------------------------------------------------------------------------------------


echo "This is the best and appropiate method to find out the minimum and maximum value from the random generated numbers"

echo "Enter integer value"
read number
array=()
for (( i=0; i<$number; i++ ))
do
	a=$(( ( RANDOM % 899) + 100 ))
	array[((i))]+=$a
done
echo "${array[@]} is array" 

max_value=${array[0]}
min_value=${array[0]}

for i in "${array[@]}"
do
	if [ $i -gt $max_value ]
	then
		max_value=$i
	fi
	if [ $i -le $min_value ]
	then
		min_value=$i
	fi
done
echo "$max_value is max and $min_value is min"
