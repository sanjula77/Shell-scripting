#!/bin/bash

# Prompt the user to enter the server address
read -p "Which server do you want to ping? " server_address

# Check if the user entered a server address
if [[ -z "$server_address" ]]; then
    # Print an error message and exit if no address is provided
    echo "Error: No server address provided. Please try again."
    exit 1
fi

# Inform the user that the ping is starting
echo "Pinging $server_address..."

# Execute the ping command, sending the output to a temporary file
# '-c3' sends 3 packets, and '-w5' sets a timeout of 5 seconds
# '2>&1' redirects both standard output and standard error to the file
ping -c3 -w5 $server_address > /tmp/ping_result 2>&1

# Check the exit status of the ping command
if [[ $? -eq 0 ]]; then
    # If the ping was successful, inform the user and display the results
    echo "Ping successful! Here are the results:"
    cat /tmp/ping_result
else
    # If the ping failed, print a failure message and show the error details
    echo "Ping failed. Please check the server address or your network connection."
    echo "Details:"
    cat /tmp/ping_result
fi

# Remove the temporary file to clean up
rm /tmp/ping_result
