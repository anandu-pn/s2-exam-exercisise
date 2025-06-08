#!/bin/bash
#to store key value
declare -A myarr
myarr=( [name]=paul [age]=24 [city]=kochi )
echo "name is ${myarr[name]}"
