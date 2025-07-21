#!/bin/bash

#There are two ways of calling other script 
#For the first way variables values will not change after calling the script . changes happened in the other script will not reflect in the current script.
#The two PID will be different
# Command "./016-other-script.sh"


#For the second way the variables values will be changed after calling the script . changes happened will be reflected. 
#The two PID will be same
# Command "source ./016-other-script.sh"

COURSE="Devops from the current script"
echo "The variable before calling : $COURSE"
echo "The PID is : $$"

#./016-other-script.sh   #Need to provide execute permission  chmod +X

source ./016-other-script.sh

echo "After caling the variable : $COURSE"
