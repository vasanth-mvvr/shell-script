#!/bin/bash

DISK_USAGE=$(df -hT | grep xfs)
DISK_THRESHOLD=75

while IFS= read -r line
do
echo "The disk usage is : $DISK_USAGE "
#awk -F " " '{$print $6}'
done <<< $DISK_USAGE 