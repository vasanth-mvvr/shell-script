#!/bin/bash
#Arrays is a datatype which is used to store homogeneous elements
#Arrays starts with index zero
#Two ways to get the result that is 1.) $ and 2.) ${}

MOVIES=("RRR" "PUSHPA")

echo "The first movie is : ${MOVIES[0]}"
echo "The second movie is : ${MOVIES[1]}"
echo "The third movie is : ${MOVIES[2]}"
# "@" is the symbol of everything.
echo "The movies are : ${MOVIES[@]}"