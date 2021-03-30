#!/bin/bash -x

fullDayHours=8
wagePerHour=20
partTimeHour=4
workDayinMonth=0
employeWageForAMonth=0

#Total wages till total working hours 100 or 20 day in a month

function getWorkHrs(){
	local i=$empCheck
		 case $i in
      	1)
         	empHrs=8
         ;;
      	2)
         	empHrs=4
         ;;
      	0)
         	empHrs=0
         ;;
      	*)
      	echo "Invalid Input"
         ;;
   esac
	echo $empHrs
}


while [ $workDayinMonth -ne 20 -a $fullDayHours -ne 100 ]
do

	empCheck=$((RANDOM%3))
	empHrs="$(getWorkHrs $empCheck)"
	employeWageForAMonth=$(($employeWageForAMonth+$(($empHrs*$wagePerHour))))



	workDayinMonth=$(($workDayinMonth+1))

	fullDayHours=$(($empHrs+8))
	partTimeHour=$(($empHrs+8))

done


