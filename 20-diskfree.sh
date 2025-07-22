#!/bin/bash

R="\e[31m"
G="\e[32m"
N="\e[30m"
DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=6
MESSAGE=""

#echo "The disk usage is : $DISK_USAGE "
# while IFS= read -r line
# do
# DISK_VALUE=$(awk -F " " '{print $6}' | cut -d "%" -f1)
# #echo "$DISK_VALUE"
# if [ $DISK_VALUE -ge $DISK_THRESHOLD ] 
#     then 
#         echo -e "$R The data is almost full : $DISK_VALUE $N "
#     else
#         echo -e "$G The data is not full : $DISK_VALUE $N "
# fi
# #awk -F " " '{$print $6}'
# done <<< $DISK_USAGE 

while IFS= read -r line
do
    USAGE=$(echo "$line" | awk -F " " '{print $6}' | cut -d "%" -f1)
    FOLDER=$(echo "$line" | awk -F " " '{print $7}')
    if [ $USAGE -ge $DISK_THRESHOLD ]
        then 
            MESSAGE=echo -e "$R  $FOLDER if more than the  $DISK_THRESHOLD  current usage : $USAGE $N"
    fi
done <<< $DISK_USAGE

echo "MESSAGE:$MESSAGE"