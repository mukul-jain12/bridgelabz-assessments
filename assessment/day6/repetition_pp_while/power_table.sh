read n

power=1
i=1

while (( $i <= $n ))
do
	if [ $power -gt 256 ]
	then
		break
	else
		echo "2^"$i "=" $power
		power=$((2*power))
	fi
	
	i=$((i+1))
done
