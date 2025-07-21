#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-log

if [ -d $SOURCE_DIRECTORY ]
then 
    echo "Directory already exists : $SOURCE_DIRECTORY "
else
    echo "Directory not exists : $SOURCE_DIRECTORY"
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS= read -r line #IFS -- internal field separator
do 
echo "log files : $line"
zip $line.zip 
MOVE=mv /tmp/zipped_files
if [ -f $MOVE ]
then 
    echo "moved files successfully"
else
    echo "files not moved"
fi
done <<< $FILES