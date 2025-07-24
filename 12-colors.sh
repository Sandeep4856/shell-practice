#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"

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
        echo  -e "$2..... $R FAILURE $N "
        exit 1
    else
        echo  -e "$2.....$G SUCCESS $N "
    fi
}

dnf install mysql -y &>>$LOGFILE
VALIDATE $? "installing MYSQL" 
# $? is considered as $1 -->  1st variable  || "installing MYSQL" is considered as $2 -->  2nd  variable


dnf install git -y &>>$LOGFILE
VALIDATE $? "installing GIT" 
# $? is considered as $1 -->  1st variable  || "installing git" is considered as $2 -->  2nd  variable


dnf install dockerr -y &>>$LOGFILE
VALIDATE $? "installing GIT" 