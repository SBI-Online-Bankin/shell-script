#!/bin/bash
#sh 08-special-variables.sh Ramesh Suresh
echo "all variables : $?"         # exit status of last command
echo "all variables : $@"         # All variables
echo "all variables : $*"  
echo "Number of variables: $#"    #Count of variables passed
echo "Script Name : $0"
echo "Current Working Dir : $PWD"
echo "Home dir of current user : $HOME"
echo "Which user is running this script : $USER"
echo "HostName : $HOSTNAME"
echo "Process ID of current shell script : $$"
sleep 60 &
echo "Process ID of last background command is $!"