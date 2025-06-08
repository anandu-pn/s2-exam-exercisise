#!/bin/bash
myvar="hey budd, how are you"
myvarlen=${#myvar}
echo "Length of my var $myvarlen"

echo "upper case is   ${myvar^^}"
echo "lowe case is  ${myvar,,}"
#to replace astring
newvar=${myvar/budd/paul}
echo "new var ${newvar}"
#to slice
sli="after slice  ${myvar:4:5}"
echo "slice string : ${sli}"
