#!/bin/bash -x
present=1
absent=0
randomNumber=$((RANDOM%2))
workHours=8
salaryperHour=50
if [ $randomNumber -eq 1 ]
then
	echo "Present"
	dailyEmployeeWage=$(($workHours*$salaryperHour))
else
	echo "Absent"
fi
