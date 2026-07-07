#!/bin/bash

Number=$1

if [ $Number -gt 10 ]
then
    echo "Given $Number is grater than 10"
else
    echo "Givenm $Number is less than 10"
fi