#!bin/bash

#a. 1ft = 12 in then 42 in = ? ft
echo "Enter parameter to convert the value from inch to feet"
read param
unit_con=`echo $param | awk '{print $1*0.0833}'`
echo "$param inch = $unit_con feet"


#b. Rectangular Plot of 60 feet x 40 feet in meters
echo "Enter the length and breadth of rectangle in feet and calculate the area in meter"
read length
read breadth
area_of_rectangle=`echo $length $breadth | awk '{print $1*$2*0.3048}'`
echo "$area_of_rectangle meter is a area of rectangle"


#c. Calculate area of 25 such plots in acres
echo "Enter no of total plots"
read no_of_plot
total_area=`echo $area_of_rectangle $no_of_plot | awk '{print $1*$2}'`
echo "area of n such plots is $total_area acres"