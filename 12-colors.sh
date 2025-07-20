#!/bin/bash

#In this file we are making using of colors 
USERID=$(id -u)
TIMESTAMP=$(date +%F-%I:%M:%S-%p)     #Here we will get the date and time
SCRIPT_NAME=$( echo $0 | cut -d "." -f1) #Here we are getting the file name with out extension using the cut command for the first fragment
LOGFILE=/tmp/$TIMESTAMP-$SCRIP_TNAME.log #Here we have created a logfile which stores in the tmp directory

R=\e[31m
G=\e[32m
N=\e[33m

echo "Script started executing : $TIMESTAMP"
VALIDATE(){
    if [ $1 -ne 0]
    then 
        echo "$2 ... $R Failure $N " #Here we are using color code first we are enabling and then using it  "\e[31m "--> for red color
    else
        echo " $2 .... $G Success $N " #Here we are using color code first we are enabling and then using it  "\e[32m "--> for green color
    else
}

if [ $USERID -ne 0 ]
then 
    echo "you need to have super user access"
    exit 1
else
    echo "you are super user"

dnf install mysql -y &>>$LOGFILE #Appending the data to the logfile
VALIDATE $? "Installing mysql"

dnf install git -y &>>$LOGFILE
VALIDATE $? "Installing git"