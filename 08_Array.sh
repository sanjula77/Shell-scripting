#!/bin/bash

# Declare and initialize an array
my_array=("Apple" "Banana" "Cherry")

# Access array elements
echo "First element: ${my_array[0]}"
echo "Second element: ${my_array[1]}"
echo "Third element: ${my_array[2]}"

# Add a new element
my_array[3]="Date"
echo "Fourth element: ${my_array[3]}"

# Modify an element
my_array[1]="Blueberry"
echo "Modified second element: ${my_array[1]}"

# Print all elements
echo "All elements: ${my_array[@]}"

# Get the number of elements
echo "Number of elements: ${#my_array[@]}"

# Iterate through array elements
echo "Iterating through elements:"
for element in "${my_array[@]}"; do
    echo "$element"
done
