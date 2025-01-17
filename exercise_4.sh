#!/bin/bash

read -p "Enter Directory Name: " dirName
read -p "Enter File Type: " fileType

if [ -d "$dirName" ];
then
	mv *."$fileType" "$dirName"
else
	echo "Doesn't Exist $dirName Directory, Now I Created It"
	mkdir "$dirName"
	mv *."$fileType" "$dirName"
fi
