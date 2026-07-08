#!/bin/bash
Package=$@
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please try with super user"
    exit 1    # here "exit 1" is Manually exit
else
    echo "You are super user"
fi

validate_function(){
    echo "Exit status $1"
    echo "Package is $2"
}

validate_function $? "mysql"

