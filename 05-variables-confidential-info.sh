#!bin/bash


#In this the read command which is used to take the username and password from the user.
# "-s" which is used to hide the data while entering.
echo "enter username:"
read USERNAME

echo "enter password"
read -s PASSWORD

echo "username is $USERNAME"
echo "password is $PASSWORD" 