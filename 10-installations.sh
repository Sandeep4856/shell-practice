#!/bin/bash

USERID=$(id -u)

if [ USERID -ne 0]
then 
    echo "you are not a super user"
    exit 1
else
    echo " you are a super user"
fi


dnf install mysql -y

if [ $? -ne 0 ]
then 
    echo " installation of mysql......FAILURE "
    exit 1
else
    echo " Inatallation of mysql......SUCCESS"
fi


dnf install git -y

if [ $? -ne 0 ]
then 
    echo " installation of git......FAILURE "
    exit 1
else
    echo " Inatallation of git......SUCCESS"
fi


