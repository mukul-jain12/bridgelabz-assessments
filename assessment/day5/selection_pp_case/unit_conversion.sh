echo "For the unit conversion enter no between 1-4
Type '1' to conver feet to inch
Type '2' to conver feet to meter
Type '3' to conver inch to feet
Type '4' to conver meter to feet"
read num

echo "Enter parameter : "
read param

case $num in
	1)
		result=`echo $param | awk '{print $1*12}'`
		echo "$param feet = $result inches";;
	2)
		result=`echo $param | awk '{print $1*0.3048}'`
		echo "$param feet = $result meter";;
	3)
		result=`echo $param | awk '{print $1*0.0833}'`
		echo "$param inches = $result feet";;
	4)
		result=`echo $param | awk '{print $1*3.2808}'`
		echo "$param meter = $result feet";;
esac
