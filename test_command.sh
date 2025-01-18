#!/bin/bash

read -p "Enter First Name: " name_1
read -p "Enter second Name: " name_2

if test "$name_1" = "$name_2"
then
	echo "Same Names"
else
	echo "$name_1 Not Equl to $name_2"
fi

read -p "Enter first value: " num_1
read -p "Enter second value: " num_2

if test "$num_1" -gt "$num_2"
then
	echo "$num_1>$num_2"
else
	echo "$num_1<$num_2"
fi
