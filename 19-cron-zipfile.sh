#!/bin/bash
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "Failure $2"
        exist 1
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
zip $line.zip 
VALIDATE $? "Zipped"
mv /tmp/zipped_files
VALIDATE $? "Installed"
# if [ -f $MOVE ]
# then 
#     echo "moved files successfully"
# else
#     echo "files not moved"
# fi
done <<< $FILES