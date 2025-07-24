#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "you are not a super user"
    exit 1
else
    echo " you are a super user"
fi


VALIDATE() {
    if [ $1 -ne 0 ]
    then
        echo "$2.....FAILURE"
        exit 1
    else
        echo "$2.....SUCCESS"
}

dnf install mysql -y
VALIDATE $? "installing MYSQL" 
# $? is considered as $1 -->  1st variable  || "installing MYSQL" is considered as $2 -->  2nd  variable


dnf install git -y
VALIDATE $? "installing GIT" 
# $? is considered as $1 -->  1st variable  || "installing git" is considered as $2 -->  2nd  variable
