#!/bin/bash

# Prompt the user to enter the source directory
read -p "Enter Source Directory: " source

# Prompt the user to enter the archive name
read -p "Enter Archive Name (e.g., backup.tar.gz): " archive

# Check if the source directory exists
if [ -d "$source" ]; then
    # Add .tar.gz to the archive name if not provided
    if [[ "$archive" != *.tar.gz ]]; then
        archive="$archive.tar.gz"
    fi

    # Create the archive
    tar -czf "$archive" "$source"
    echo "Archive created successfully"
else
    # Print an error message if the source directory does not exist
    echo "Source directory does not exist"
fi

# Objective: Write a script to back up a directory to a .tar.gz archive.
# Requirements:
# Use tar for archiving.
# Accept the source directory and archive name as inputs.