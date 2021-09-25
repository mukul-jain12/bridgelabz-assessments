#!/bin/bash

read date_rel
read month_rel

result="false"

if [ $month_rel -ge 3 ] && [ $month_rel -le 6 ]
then
	month_days=$((30 + (month_rel%2)))
	if [ $date_rel -ge 1 ] && [ $date_rel -le $month_days ]
	then
		days=$(((month_rel*100) + date_rel))
		if [ $days -ge 320 ] && [ $days -le 620 ]
		then
			result="true"
		fi
	fi
fi

echo "$date_rel - $month_rel $result"