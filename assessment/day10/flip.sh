head=0
tail=0

while [ $((head-tail)) -lt 2 ] && [ $((tail-head)) -lt 2 ]
do
	a=$(( RANDOM%2 + 1))
	
	echo "$((head-tail)) its is the difference"
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

if [ $head -gt $tail ]
then
	echo "Head won by difference of $((head-tail))"
elif [ $head -lt $tail ]
then
	echo "Tail won by difference of $((tail-head))"
else
	echo "Its a tie"
fi
