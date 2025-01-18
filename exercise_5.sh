#!/bin/bash

# Prompt user to enter the directory name
read -p "Enter Directory Name: " dirName

# Check if the directory exists
if [ ! -d "$dirName" ]; then
    echo "$dirName doesn't exist."
    exit 1
# Check if there are any .log files in the directory
elif [ ! -e "$dirName"/*.log ]; then
    echo "No .log files found in the directory."
else
    # Loop through all .log files in the specified directory
    for logFile in "$dirName"/*.log; do
        # Extract just the file name using basename
        fileName=$(basename "$logFile")
        # Count "ERROR" occurrences in the log file
        errorCount=$(grep -c "ERROR" "$logFile")
        # Output file name and error count
        echo "$fileName: $errorCount"
    done
fi
