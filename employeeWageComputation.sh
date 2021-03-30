#!/bin/bash -x

fullDayHours=8
wagePerHour=20
partTimeHour=8


feq=$((RANDOM%3))
i=$feq

case $i in
	1)
		echo "Present:"$i
		employewage=$(($fullDayHours*$wagePerHour))
		;;
	2)
		echo "partTime:"$i
		employewage=$(($partTimeHour*$wagePerHour))
		;;
	0)
		echo "Absent:"
		;;
	*)
		echo "Invalid Input"
		;;
esac
