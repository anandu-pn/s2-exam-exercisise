#!/bin/bash
myarr=( 1 2 3 Hello Hi )
length=${#myarr[*]}
for((i=0;i<$length;i++))
do
	echo "value of array is ${myarr[$i]}"
done
