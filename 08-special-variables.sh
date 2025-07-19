#!/bin/bash

echo "To print All variables: $@ "
echo "The no of variables passed are : $#"
echo "To get to know about the script name : $0"
echo "To get current working directory : $PWD"
echo " To get to know about the home directory is : $HOME"
echo "To get to know about the which user is running the script : $USER "
echo "Hostname means the sever name: $HOSTNAME"
echo "Process ID of the current script: $$"
sleep 60 #foreground
#sleep 60 & #background 
#echo "process ID of last background command : $!"