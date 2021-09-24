#!/bin/bash
read n

for (( i=2; i <= $n; i++ ));
do
    while [ $((n%i)) == 0 ];
    then
        echo $i
	n=$((n/i))
    fi
done
