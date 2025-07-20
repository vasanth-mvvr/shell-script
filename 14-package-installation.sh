#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(data +%F-%I:%M:%S-%p)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

R=/e[31m
G=/e[32m
Y=/e[33m
N=/e[0m

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 $R FAILURE $N "
    else 
        echo -e "$2 $G SUCCESS $N"
    fi
}
if [ $USERID -ne 0]
then 
    echo "you are not a super user"
    exit 1
else 
    echo "you are super user"
fi


for i in {$@}
do 
    echo "The packages are : $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then 
        echo -e "Packaged installed .. $Y Skipping $N"
    else 
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installing package $i"
    fi
done