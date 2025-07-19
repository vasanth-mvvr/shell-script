#!/bin/bash

#As we have seen that if the values are repeating continuously it is good to declare variables
#If the set of lines of code is repeating  it is better to declare functios

USERID=$(id -u)
VALIDATE(){
    if [ $1 -ne 0]
    then 
        echo "Failure $2"
    else
        echo "Success $2"
}

if [ $USERID -ne 0 ]
then 
    echo "you need to have super user access"
    exit 1
else
    echo "you are super user"

dnf install mysql -y 
VALIDATE $? "Installing mysql"

dnf install git -y 
VALIDATE $? "Installing git"