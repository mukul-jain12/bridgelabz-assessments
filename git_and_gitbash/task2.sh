#!/bin/bash -x
read n

i=0
for (( counter=1; counter<=n; counter++));
do
    echo $counter
    x=`echo $counter | awk '{print 1/$1}'`
    i=`echo $i $x | awk '{print $1 + $2}'`
    echo $i
done
