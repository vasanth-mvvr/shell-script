#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[30m"
DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=75

echo "The disk usage is : $DISK_USAGE "
while IFS= read -r line
do
DISK_VALUE=$(awk -F " " '{print $6}' | cut -d "%" -f1)
#echo "$DISK_VALUE"
if [ $line -ge $DISK_THRESHOLD ] 
    then 
        echo -e "$R The data is almost full : $line $N "
    else
        echo -e "$G The data is not full : $line $N "
fi
#awk -F " " '{$print $6}'
done <<< $DISK_USAGE 