#!/bin/bash

# Using a traditional 'for' loop to iterate over a list of items
echo "Loop 1: Iterating over a list of strings"
for fruit in Apple Banana Cherry; do
    # Prints each fruit name from the list
    echo "I like $fruit"
done

echo # Add a blank line for better readability

# Using a C-style 'for' loop to print numbers from 1 to 5
echo "Loop 2: Printing numbers using a C-style loop"
for (( i=1; i<=5; i++ )); do
    # Prints the current value of i in each iteration
    echo "Number: $i"
done
