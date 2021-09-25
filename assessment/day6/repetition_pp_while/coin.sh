#!/bin/bash +x

#Extend the Flip Coin problem till either Heads or Tails wins 11 times.

head=1
tail=1

while true
do
	FLIP=$(($RANDOM%2))
	
	case $FLIP in
		0)
			if [[ $head -eq 11 ]] || [[ $tail -eq 11 ]]
			then
				break
			else
				echo "HEADS" $head $FLIP
				head=$((head+1))
			fi;;
			
		1)
			if [[ $head -eq 11 ]] || [[ $tail -eq 11 ]]
			then
				break
			else
				echo "TAILS" $tail $FLIP
				tail=$((tail+1))
			fi;;
	esac
done

if [ $head -gt $tail ]
then
	echo "HEADS Won"
else
	echo "TAILS Won"
fi
