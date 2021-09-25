#!/bin/bash

#Rename file 

for file in `ls *.log.1`
do 
	file2=`echo $file | awk -F.log '{print $1 "-"}'`
	today=`date +"%d%m%y"`
	filename=`echo $file2$today".log"`
	mv $file $filename
done
