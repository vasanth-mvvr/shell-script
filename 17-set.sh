#!/bin/bash

set -e
handle_error(){
    echo "The error occured in the line no :$1 and the command id $2"
}
trap ' $handle_error ${LINENO} "$BASH_COOMAND"' ERR

USERID=$(id -u)
if [ $USERID -ne 0 ]
then 
    echo "you need to have super user access"
    exit 1
else
    echo "you are super user"

dnf install mysql -y
dnf install git -y