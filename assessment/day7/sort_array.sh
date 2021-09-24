array=()
for (( i=0; i<10; i++ ))
do
	a=$(( ( RANDOM % 899) + 100 ))
	array[((i))]+=$a
done
echo "${array[@]} is array" 

arrays=(`echo ${array[@]} | tr " " "\n" | sort -n`)
echo ${arrays[@]}
echo "${arrays[1]} is max and ${arrays[-2]} is min"