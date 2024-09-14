#!/bin/bash
# Alias-1

:'
>>>> Before creating your own command, check if it already exists in the system.
        Use "type yourNewCommandName" in the terminal to verify.
>>>>
>>>>
>>>>
'

# Create a new command using alias.
alias newCommandName="cd Desktop; mkdir Hello; touch hello.txt;" # Ensure there are no spaces around the equal sign.
newCommandName                                                   # Execute the new command.

echo "Hello World"
