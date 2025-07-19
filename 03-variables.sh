#!/bin/bash

#In the 02_variables.sh the disadvantage is every time we need to add the repeated names they are Avenger and Batman
#To overcome that we are making use of variables

#Variable Declaration
#No space between variable and value
PERSON1=Avenger
PERSON2=Batman

#Variable referring
echo "$PERSON1: Hello $PERSON2,How are you?"
echo "$PERSON2: Hello $PERSON1, I am fine. what about you?"
echo "$PERSON1: I am fine $PERSON2.How about your work?"
echo "$PERSON2: work is going good.What about you?"