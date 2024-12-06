#!/bin/bash

# The shebang line tells the system to use the bash shell to run this script.

# Key Points about the 'export' command:

# 1. **Environment Variables**:
# Environment variables are key-value pairs that store important system information.
# These variables are used by the operating system and applications to configure system settings or hold data.
# Examples of system settings can include user preferences, file paths, and system configurations.

# 2. **Why Use the 'export' Command?**:
# - By default, variables set in the shell are only available to that specific shell session. They are **local** to the session.
# - Without using the 'export' command, these variables will not be accessible by other programs or scripts launched from that shell.
# - The 'export' command makes a variable **available to subprocesses**. This means any new processes or scripts started from the shell can inherit and use the environment variable.


# Defining an environment variable for the user's name
export USER_NAME="Sanjula"  # The variable 'USER_NAME' stores the string "Ayesh"
# Defining an environment variable for the user's age
export USER_AGE=24  # The variable 'USER_AGE' stores the number 24

# Printing a statement that includes the values of the environment variables
echo "I am $USER_NAME and $USER_AGE years old"  # The echo command prints the message with the values of 'USER_NAME' and 'USER_AGE'

# The $USER_NAME and $USER_AGE are environment variable references and will be replaced with their respective values.

# Demonstrating some common system environment variables:
echo "Your home directory is: $HOME"  # Prints the user's home directory (e.g., /home/username)
echo "The current shell is: $SHELL"  # Prints the path to the current shell (e.g., /bin/bash)
echo "Your username is: $USER"  # Prints the current user's username

# How to execute this script:

# Step 1: Give execute permission to the script
# To allow the script to be executed, you need to give it execute permission using the 'chmod' command.
# Run the following command in your terminal:
# chmod +x 03_environment_variables.sh  # This command grants execute permission to the script.

# Step 2: Execute the script
# After granting execute permission, you can run the script by typing:
# ./03_environment_variables.sh  # This command runs the script from the current directory.
