#!/bin/bash -x
present=1
absent=0
randomNumber=$((RANDOM%2))
if [ $randomNumber -eq 1 ]
then
	echo "Present"
else
	echo "Absent"
fi
