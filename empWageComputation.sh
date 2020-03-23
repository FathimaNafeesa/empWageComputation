#!/bin/bash 

#WelcomeMessage
echo "                                                                                         Welcome to Employee Wage Computation Program                                     "
#branch UC1
function checkemployeepresentorabsent {
echo "Enter employee name"
read employeename

attendance=$((RANDOM % 2))
if [ attendance = 1 ]
then
	echo "Employee $employeename is present"
else
	echo "Employee $employeename is absent"
fi
}

#branch UC2
WAGE_PER_HOUR=20
FULL_TIME_HOUR=8
function calculatedailyemployeewage {

totalwage=$(($WAGE_PER_HOUR * $FULL_TIME_HOUR))
 
echo "The employee $employeename has a daily wage of $totalwage Rupees"
}

#branch UC3
PART_TIME_HOUR=4
function parttimeemployeewage {
parttimewage=$(($WAGE_PER_HOUR * $PART_TIME_HOUR))

echo "The part time employee $employeename has a daily wage of $parttimewage Rupees"
}
#branch UC4
function casestatements {
option=$((RANDOM % 4))

case $option in
    1) checkemployeepresentorabsent
    ;;
    2) calculatedailyemployeewage
    ;;
    3) parttimeemployeewage
    ;;
    *) casestatements
    ;;
esac
}
casestatements
#branch UC5
#branch UC6
FULL_TIME_HOUR_PER_MONTH=100
WORKING_DAYS_PER_MONTH=20
workeddays=1
workedhours=1
while (( $workeddays <= $WORKING_DAYS_PER_MONTH ||  $workedhours <= $FULL_TIME_HOUR_PER_MONTH ))
do
    totalwage=$(( $WAGE_PER_HOUR * $workedhours )) 
    workedhours=$(($workedhours + 1))
    totalwagepermonth=$(( $WAGE_PER_HOUR * $workeddays * $FULL_TIME_HOUR )) 
    workeddays=$(($workeddays + 1))
done
 echo "The monthly wage is $totalwagepermonth"
 echo "The daily wage is $totalwage"
 #branch UC7
function calculateworkinghours {
    workedhours=$(( totalwage / WAGE_PER_HOUR ))
    echo "The working hours is $workedhours"
}
calculateworkinghours
#branch UC8
declare -a totalwagetilladay
for (( workingday=1;workingday<=20;workingday++ ))
do
    totalwagetilladay[$workingday]=$(( $totalwage * $workingday ))
done
echo "${totalwagetilladay[*]}"
#branch UC9

declare -a allwages
index=1
for (( workingday=1;workingday<=20;workingday++ ))
do
    allwages[$index]=$(( $totalwage * $workingday ))
    index=$(( $index + 1 ))
done
workingday=1
for workingday in "${!allwages[@]}"
do
echo "${workingday}=${allwages[$workingday]}"
done
