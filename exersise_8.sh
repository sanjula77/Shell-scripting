#!/bin/bash

# Display a summary of user login activity

echo "Displaying summary of user login activity..."

# Get the list of users from the 'last' command, extract unique users using awk, sort and count them
unique_users=$(last | awk '{print $1}' | sort | uniq | wc -l)

echo "Number of unique users who logged in: $unique_users"

# Optionally, display the list of unique users
echo "List of unique users who logged in:"
last | awk '{print $1}' | sort | uniq

# Objective: Write a script to display a summary of user login activity.
# Requirements:
# Use last and awk to process the output.
# Provide a count of unique users who logged in.