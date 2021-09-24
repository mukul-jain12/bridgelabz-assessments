#Read a single digit number and write in word

#!/bin/bash
read num

if [ $num == 1 ];
then
	echo "One";
elif [ $num == 2 ];
then
	echo "Two";
elif [ $num == 3 ];
then
	echo "Three";
fi