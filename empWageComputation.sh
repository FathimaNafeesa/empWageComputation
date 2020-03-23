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
function calculatedailyemployeewage {
WAGE_PER_HOUR=20
FULL_TIME_HOUR=8

totalwage=$(($WAGE_PER_HOUR * $FULL_TIME_HOUR))
 
echo "The employee $employeename has a daily wage of $totalwage Rupees"
}

#branch parttimeemployeewage
function parttimeemployeewage {
PART_TIME_HOUR=4

parttimewage=$(($WAGE_PER_HOUR * $PART_TIME_HOUR))

echo "The part time employee $employeename has a daily wage of $parttimewage Rupees"

#branch UC3

PART_TIME_HOUR=4

parttimewage=$(($WAGE_PER_HOUR * $PART_TIME_HOUR))

echo "The part time employee $employeename has a daily wage of $parttimewage Rupee"
}
#branch UC4

option=$((RANDOM % 4))

case $option in
    1) checkemployeepresentorabsent
    ;;
    2) calculatedailyemployeewage
    ;;
    3) parttimeemployeewage
    ;;
esac
