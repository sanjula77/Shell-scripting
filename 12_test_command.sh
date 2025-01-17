#!/bin/bash
# A script to demonstrate the usage of the `test` command in Bash

# Checking if a file exists
if test -e example.txt; then  # -e checks if the file exists
    echo "example.txt exists."
else
    echo "example.txt does not exist."
fi

# Checking if a directory exists
if test -d my_directory; then  # -d checks if the path is a directory
    echo "my_directory exists and is a directory."
else
    echo "my_directory does not exist or is not a directory."
fi

# Comparing two integers
a=10  # Assigning value 10 to variable 'a'
b=20  # Assigning value 20 to variable 'b'

if test $a -lt $b; then  # -lt checks if the first number is less than the second
    echo "$a is less than $b."
else
    echo "$a is not less than $b."
fi

# Checking if two strings are equal
str1="hello"  # Assigning the string "hello" to 'str1'
str2="world"  # Assigning the string "world" to 'str2'

if test "$str1" = "$str2"; then  # '=' checks if the strings are equal
    echo "Strings are equal."
else
    echo "Strings are not equal."
fi

# Logical AND: Check if two files exist
if test -e file1.txt && test -e file2.txt; then  # && combines two conditions
    echo "Both file1.txt and file2.txt exist."
else
    echo "One or both files do not exist."
fi

# Logical OR: Check if at least one file exists
if test -e file1.txt || test -e file2.txt; then  # || combines two conditions
    echo "At least one of the files exists."
else
    echo "Neither file exists."
fi

# Negation: Check if a file does NOT exist
if test ! -e missing.txt; then  # ! negates the condition
    echo "missing.txt does not exist."
else
    echo "missing.txt exists."
fi

# File comparison: Check if a file is readable
if test -r example.txt; then  # -r checks if the file is readable
    echo "example.txt is readable."
else
    echo "example.txt is not readable or does not exist."
fi

# File comparison: Check if a file is writable
if test -w example.txt; then  # -w checks if the file is writable
    echo "example.txt is writable."
else
    echo "example.txt is not writable or does not exist."
fi

# Displaying exit status of a test command
test -e example.txt  # Test if example.txt exists
echo "Exit status: $?"  # Print the exit status (0 for true, 1 for false)

# -e: Checks if a file or directory exists.
# -z: Checks if a string is empty (zero length).
# -f: Checks if a file exists and is a regular file (not a directory or device).
# -w: Checks if a file exists and is writable.
# -r: Checks if a file exists and is readable.
# -x: Checks if a file exists and is executable.
# -d: Checks if a directory exists.
# -s: Checks if a file exists and is not empty (size > 0).
# -h or -L: Checks if a file exists and is a symbolic link.
# -N: Checks if a file exists and has been modified since it was last read.
# !: Negates a condition (e.g., test ! -e filename).
# =: Checks if two strings are equal.
# !=: Checks if two strings are not equal.
# -n: Checks if a string is not empty (non-zero length).
# -lt: Checks if one integer is less than another.
# -le: Checks if one integer is less than or equal to another.
# -gt: Checks if one integer is greater than another.
# -ge: Checks if one integer is greater than or equal to another.
# -eq: Checks if two integers are equal.
# -ne: Checks if two integers are not equal.

# End of script
