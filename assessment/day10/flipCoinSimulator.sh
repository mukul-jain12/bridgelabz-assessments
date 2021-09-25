head=1
tail=1

while [ $head -le 20 ] && [ $tail -le 20 ]
do
	a=$(( RANDOM%2 + 1))
	case $a in
		1)
			echo $head $a
			head=$((head+1))
			;;
		2)
			echo $tail $a
			tail=$((tail+1))
			;;
	esac
done

echo "Number of win by Heads and Tails are $head and $tail"
if [ $head -gt $tail ]
then
	echo "Head won by difference of $((head-tail))"
elif [ $head -lt $tail ]
then
	echo "Tail won by difference of $((tail-head))"
else
	echo "Its a tie"
fi
