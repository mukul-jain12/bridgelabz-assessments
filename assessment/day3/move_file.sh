#!/bin/bash

#Move file to it's respective folder

for file in `ls *.txt`
do 
	fname=`echo $file | awk -F. '{print $1}'`
	mkdir $fname
	mv $file $fname
done
