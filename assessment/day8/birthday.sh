#!/bin/bash 
declare -A birthday

jan=0
feb=0
mar=0
apr=0
may=0
june=0
jul=0
aug=0
sep=0
oct=0
nov=0
dec=0

i=0

while [ $i -lt 50 ]
do
 let value=$(((($RANDOM%12))+ 1))

 birthday[$i]+=$value
 echo $value


case $value in

	1) jan=$((jan+1)) ;;
	2) feb=$((feb+1)) ;;
	3) mar=$((mar+1)) ;;
	4) apr=$((apr+1)) ;;
	5) may=$((may+1)) ;;
	6) june=$((june+1)) ;;
	7) jul=$((jul+1)) ;;
	8) aug=$((aug+1)) ;;
	9) sep=$((sep+1)) ;;
	10) oct=$((oct+1)) ;;
	11) nov=$((nov+1)) ;;
	12) dec=$((dec+1)) ;;

esac

i=$(( $i+1 ))

done

for m in ${!birthday[@]}
do
	echo ${birthday[$m]} $m
done
