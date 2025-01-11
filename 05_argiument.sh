#!/bin/bash

# Prints the name of the script (the command used to invoke it).
echo $0

# Prints the first argument passed to the script.
echo $1

# Prints the second argument passed to the script.
echo $2

# Prints all the arguments passed to the script as a single string.
echo $@

# Prints the number of arguments passed to the script.
echo $#

#execute file

# ./argument.sh arg1 arg2 arg3

#output 

# ./argument.sh   # Name of the script
# arg1            # First argument
# arg2            # Second argument
# arg1 arg2 arg3  # All arguments as a string
# 3               # Total number of arguments
