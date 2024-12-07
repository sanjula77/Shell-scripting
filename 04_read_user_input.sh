#!/bin/bash

# The shebang line specifies the interpreter to use for the script. In this case, it's the bash shell.

echo "Enter Your Name: "
# Prompts the user to enter their first name.

read name
# Reads the input from the user and stores it in the variable `name`.

echo "Enter Your Last Name: "
# Prompts the user to enter their last name.

read
# Reads the input from the user and stores it in the special variable `REPLY` by default.

last_name=$REPLY
# Assigns the value of `REPLY` (which holds the last name) to the variable `last_name`.

read -p "Enter Your Age: " age
# Prompts the user to enter their age using the `-p` option to display the message on the same line.
# The input is stored in the variable `age`.

read -p "Enter user name: " username
# Prompts the user to enter their username using the `-p` option and stores it in the variable `username`.

read -sp "Enter password: " password
# Prompts the user to enter their password silently (no echo) using the `-s` option and stores it in `password`.

echo ""
# Outputs a blank line to move to the next line after silent input.

# Output the collected information
echo ""
echo "----------------------------------"
echo "        User Details Summary       "
echo "----------------------------------"
echo "Full Name  : $name $last_name"
echo "Age        : $age"
echo "Username   : $username"
echo "Password   : $password"
echo "----------------------------------"