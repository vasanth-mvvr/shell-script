#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 10]
then 
    echo "The number $NUMBER is greater than 10."
else
    echo "The number $NUMBER is lesser than 10."
fi