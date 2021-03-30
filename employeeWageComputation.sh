#!/bin/bash -x

fullDayHours=8
wagePerHour=20
partTimeHour=8
workDayinMonth=0
employeWageForAMonth=0

#Total wages till total working hours 100 or 20 day in a month

while [ $workDayinMonth -ne 20 -a $fullDayHours -ne 100 ]
do

	feq=$((RANDOM%3))
	i=$feq

	case $i in
		1)
			echo "Present:"$i
			employeWageForAMonth=$(($employeWageForAMonth+$(($fullDayHours*$wagePerHour))))
			;;
		2)
			echo "partTime:"$i
			employeWageForAMonth=$(($employeWageForAMonth+$(($partTimeHour*$wagePerHour))))
			;;
		0)
			echo "Absent:"
			;;
		*)
		echo "Invalid Input"
			;;
	esac
	 workDayinMonth=$(($workDayinMonth+1))
	fullDayHours=$(($fullDayHours+8))
	partTimeHour=$(($fullDayHours+8))
done
