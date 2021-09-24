read n
power=1
for (( i=1; i<=n; i++ ))
do
	echo "2^"$i "=" $power
	power=$((2*power))
	
done
