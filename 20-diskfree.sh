#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=75

echo "The disk usage is : $DISK_USAGE "
while IFS= read -r line
do

#awk -F " " '{$print $6}'
done <<< $DISK_USAGE 