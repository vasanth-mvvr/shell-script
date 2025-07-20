#!/bin/bash

#As we have seen that if the values are repeating continuously it is good to declare variables
#If the set of lines of code is repeating  it is better to declare functions

#So here we are creating log files for the errors that are occured 
#there are various redirections they are ">" for redirection of single use for "success it is 1>" "failure it is 2>" "for both success and failure &>"
#" for appending any success or failure &>>"   

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)     #Here we will get the date and time
SCRIPT_NAME=$( echo $0 | cut -d "." -f1) #Here we are getting the file name with out extension using the cut command for the first fragment
LOGFILE=/tmp/$TIMESTAMP-$SCRIPT_NAME.log #Here we have created a logfile which stores in the tmp directory
VALIDATE(){
    if [ $1 -ne 0]
    then 
        echo " Failure $2" 
    else
        echo " Success $2"
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