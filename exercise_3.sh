#!/bin/bash

read -p "Enter Value: " value

if [ $((value%2)) -eq 0 ]; 
then
	echo "$value is Even Number"
elif [ $((value%2)) -eq 1 ]; 
then
        echo "$value is Odd Number"
else
        echo "Value is Invalid!, Please Try Again..."
fi

