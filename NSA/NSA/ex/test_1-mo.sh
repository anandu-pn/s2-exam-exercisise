#!/bin/bash
a=2
b=5
c=$( echo "$a*$b" | bc -l )
echo "$c"
