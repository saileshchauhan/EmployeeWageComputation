#!/bin/bash -x

fullDayHours=8
wagePerHour=20
partTimeHour=8

isPresent=1
isAbsent=0
isPartTime=2
randomNumber=$((RANDOM%3))

if [ $randomNumber -eq 1 ]
then
	echo "Present"
	dailyEmployeeWage=$(($wagePerHour*$fullDayHours))
elif [ $randomNumber -eq 2 ]
then
	echo "Part Time"
	partTimeEmployeeWage=$(($wagePerHour*$partTimeHour))
fi

