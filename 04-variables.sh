#!/bin/bash

#variable declaration
PERSON1=$1  # here $1 is nothing but positional parameter and for this we pass an arugument to this parameter (RAMESH) at run time 
PERSON2=$2 

#Referring of variables 
echo "$PERSON1:: Hi $PERSON2 how are you"
echo "$PERSON2:: Hello $PERSON1 iam good how abt u"
echo "$PERSON1:: Iam good thanks for asking what are you doing right now"
echo "$PERSON2:: Iam working as a HR in MNC but im looking to move into technical side"
echo "$PERSON1:: Thats a good decision $PERSON2"



#Arguments	Values passed at execution time	Ramesh Suresh
#Parameters	The variables that hold those values	$1, $2
#Positional Parameters	Special variables to access arguments	$1, $2, $3 etc.