#!/bin/bash
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "Failure $2"
        exit 1
    else
        echo "success $2"
    fi
}
SOURCE_DIRECTORY=/tmp/app

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
zip /tmp/zipped_files/zip_files.zip $line
VALIDATE $? "Zipped"
done <<< $FILES