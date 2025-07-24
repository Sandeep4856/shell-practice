#!/bin/bash

NAMES=( "sandeep"  "samhith"  "sohith" )

echo "person1 is: ${NAMES[0]}"
echo "person2 is: ${NAMES[1]}"
echo "person3 is: ${NAMES[2]}"
echo "total persons is: ${NAMES[$@]}"