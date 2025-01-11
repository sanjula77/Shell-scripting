#!/bin/bash

# Declare an associative array
declare -A my_assoc_array

# Add key-value pairs
my_assoc_array["name"]="John Doe"
my_assoc_array["age"]="30"
my_assoc_array["city"]="New York"

# Access elements
echo "Name: ${my_assoc_array["name"]}"
echo "Age: ${my_assoc_array["age"]}"
echo "City: ${my_assoc_array["city"]}"

# Print all keys and values
echo "All keys: ${!my_assoc_array[@]}"
echo "All values: ${my_assoc_array[@]}"

# Iterate through keys and values
echo "Iterating through key-value pairs:"
for key in "${!my_assoc_array[@]}"; do
    echo "$key: ${my_assoc_array[$key]}"
done
