#!/bin/bash
read -p "Enter File Name: " fileName

if test -f "$fileName"
then
	echo "$fileName is Existing"
	echo
	fileSize=$(du -h "$fileName")
	echo "File Size is: $fileSize"
else
	echo "$fileName id Dosn't Existing, Now It Created"
	touch "$fileName"
        read -p "Write File Content: " fileContent
	echo "$fileContent" > "$fileName"
fi
