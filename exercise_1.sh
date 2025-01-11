#!/bin/bash

# Prompt the user to enter the server address they want to ping.
# The '-p' option ensures the prompt message is displayed on the same line.
read -p "Which server do you want to ping? " server_address

# Use the 'ping' command to send 3 packets (-c3) to the specified server.
# The '-w5' option sets a timeout of 5 seconds for the ping command.
ping -c3 -w5 $server_address
