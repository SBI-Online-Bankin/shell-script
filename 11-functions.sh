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
if [ $1 -ne 0 ]
then
    echo "$2 ...."
else
    echo "$2 is already installed"
fi
}
dnf install $Package -y
rpm -q $Package
validate_function $? "Installing $Package"

