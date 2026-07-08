#!/bin/bash
Package=$@
USERID=$(id -u)
if [ $USERID -ne 0 ]
then
    echo "Please try with super user"
    exit 1    #Manually exit
else
    echo "You are super user"
fi

validate-function(){

echo "Installing $2"
dnf install $2 -y
if [ $? -ne 0 ]
then
    echo "Instalation of mysql...failure"
    exit 1
else
    echo "installation of my sql is success"
fi

}

validate-function $? $Package

