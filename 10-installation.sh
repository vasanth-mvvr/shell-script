#!/bin/bash

#So to run the installation commands automatically we need to make sure that the user super user or else the commands won't be executed properly.
#so for checking super user first before installation


#initialize a variable userid pass the value of user check if it is zero

USERID=$(id -u)

if [$USERID -ne 0]
then
    echo "You should have a super user to run the commands"
    exit 1 # Manual exit from numbers 1-127   ---------   so for success $? is 0 means the previous command executed successfully  
else    
    echo "You are a super user"
fi

dnf install mysql -y

if [ $? -ne 0]
then 
    echo "Mysql installation is failure"
    exit 1
else
    echo "installation of mysql is success"
fi

dnf install git -y

if [ $? -ne 0]
then 
    echo "git installation failure. "
    exit 1
else
    echo "git installation successful"

