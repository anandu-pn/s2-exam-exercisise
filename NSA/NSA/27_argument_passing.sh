#!/bin/bash

echo "First arg is $1"
echo "second $2"
echo "all the args $@"
echo "Number of $#"

for filename in $@
do
	echo "Copying -$filename"
done
