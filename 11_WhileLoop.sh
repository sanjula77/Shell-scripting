#!/bin/bash

# Using a while loop to count down from 5 to 1
echo "Loop 1: Countdown using a while loop"
count=5  # Initialize the counter
while [ $count -gt 0 ]; do
    # Print the current value of count
    echo "Countdown: $count"
    count=$((count - 1))  # Decrement the counter
done

echo # Add a blank line for better readability

# Using a while loop to read user input until a specific word is entered
echo "Loop 2: Reading user input until 'exit' is entered"
input=""  # Initialize the input variable
while [ "$input" != "exit" ]; do
    # Prompt the user for input
    read -p "Enter something (type 'exit' to quit): " input
    if [ "$input" != "exit" ]; then
        # Print the entered input unless it's "exit"
        echo "You entered: $input"
    fi
done
echo "Goodbye!"
