#!/bin/bash

#array
myarr=( 1 2 30.5 hello "hey buddy" )
echo "${myarr[*]}"
#len of arr
echo "LEN: ${#myarr[*]}"
#slicing
echo "${myarr[*]:2:2}"
#update arr
myarr+=( new 30 40 40 )
#new value 
echo "new value: ${myarr[*]}"
