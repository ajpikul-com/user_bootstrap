#!/bin/bash
if [ -z $1 ]; then 
	exit;
fi

echo starting....

for f in $(find $1 -name "*"); do
	echo $f
done

