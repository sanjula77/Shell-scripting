#!/bin/bash

# Check if process.txt exists
if [ -e process.txt ]; then
    echo "process file exists"
else
    touch process.txt
fi

# Get the name of processes using more than 50% CPU
processName=$(ps aux | awk '$3 > 0 {print $11}')

# Append the process names to process.txt
cat <<EOF >> process.txt
$processName
EOF


# Objective: Create a script that monitors running processes and writes the names of processes consuming more than 50% CPU to a file.
# Requirements:
# Use ps and awk.
# Use file redirection.