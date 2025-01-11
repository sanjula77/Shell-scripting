#!/bin/bash

#a=10

#if [ $a -eq 11 ]
#then
#echo "$a is aequl to a"
#else
#echo "$a is Not equl to 11"
#fi

read -p "Enter Your Age: " age

if [ "$age" -gt 18 ]
then
echo "You Can Vote"

elif  [ "$age" -eq 18 ]
then
echo "Apply Your Vote ID"

else
echo "You Can't Vote"
fi