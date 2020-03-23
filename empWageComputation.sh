#WelcomeMessage
echo "                                                                                         Welcome to Employee Wage Computation Program                                     "
#branch checkemployeepresentorabsent

echo "Enter employee name"
read employeename

attendance=$((RANDOM % 2))
if [ attendance = 1 ]
then
	echo "Employee $employeename is present"
else
	echo "Employee $employeename is absent"
fi
