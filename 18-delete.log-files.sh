#!/bin/bash

SOURCE_DIRECTORY=/tmp/apps-log

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo  -e "  The directory already exists : $G $SOURCE_DIRECTORY $N"
else 
    #mkdir /tmp/app-logs
    echo -e "The directory does not exists : $R $SOURCE_DIRECTORY $N "
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line #Internal field separator
do
echo "Deleting the files: $line"
rm -rf $line
done <<< $FILES

