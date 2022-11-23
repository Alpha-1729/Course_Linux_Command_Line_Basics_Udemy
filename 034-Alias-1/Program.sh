#!/bin/bash
# Alias-1

:'
>>>> Before creating our own commands, make sure that this command is not already in the system.
        Use "type yourNewCommandName" in the terminal.
>>>>
>>>>
>>>>
'

# Creating a new command using alias.
alias newCommandName="cd Desktop; mkdir Hello; touch hello.txt;"    # There is whitespace before and after the equal sign.
newCommandName    # Calling the command.

echo "Hello World"