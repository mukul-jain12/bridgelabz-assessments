#Read a number 1,10,100,1000 etc and display unit, ten, hundred

#!/bin/bash
read num

if [ $num == 1 ];
then
	echo "Unit";
elif [ $num == 2 ];
then
	echo "Ten";
elif [ $num == 3 ];
then
	echo "Hundred";
elif [ $num == 4 ];
then
	echo "Thousand";
elif [ $num == 5 ];
then
	echo "Ten Thousand";
fi