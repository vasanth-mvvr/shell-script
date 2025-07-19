#!/bin/bash

#03-variables.sh the advantage is always we need to go to the main file and change the values so to overcome that we need to declare the variables to enter values globally

#Variable Declaration

PERSON1=$1
PERSON2=$2

#Variable referring
echo "$PERSON1: Hello $PERSON2,How are you?"
echo "$PERSON2: Hello $PERSON1, I am fine. what about you?"
echo "$PERSON1: I am fine $PERSON2.How about your work?"
echo "$PERSON2: work is going good.What about you?"