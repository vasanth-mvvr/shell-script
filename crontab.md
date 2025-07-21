#**CRONTAB**
#Deleting log files that is more than 2 weeks

#crontab is a schelduler for linux servers

#Create a directory in temporary files
```
cd /tmp
mkdir /apps-log
```
#Now create some log file in the directory
```
touch -d <ymd> <filename.log> 
```
#Create crontab where the delete code file is present

#**The standard for crontab is * * * * * so there are five stars the indicates are minutes, hours, month day, month, weekday**

#We need  to enable crontab using the command and write the script for scheduling
```
crontab -e

*/2 * * * * sh <Absolute_path.sh> #This indicates for every 2 minutes
```
#For checking weather it is listed or not
```
crontab -l
```
#The next step is to check weather the script is running perfectly or not we need to have root access
```
sudo su -
```
#The next step is to go to var log directory where corn file is present
```
cd /var/log
```
#The next step is to follow the corn tail for successful delete or failure . The command show last 10 lines 
```
tail -f corn 
``` 
