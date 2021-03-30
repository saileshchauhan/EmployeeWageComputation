#!/bin/bash -x

fullDayHours=8
wagePerHour=20
partTimeHour=8
workDayinMonth=20

feq=$((RANDOM%3))
i=$feq

case $i in
	1)
		echo "Present:"$i
		employeWageForAMonth=$(($fullDayHours*$wagePerHour*))
		;;
	2)
		echo "partTime:"$i
		employeWageForAMonth=$(($partTimeHour*$wagePerHour))
		;;
	0)
		echo "Absent:"
		;;
	*)
		echo "Invalid Input"
		;;
esac
