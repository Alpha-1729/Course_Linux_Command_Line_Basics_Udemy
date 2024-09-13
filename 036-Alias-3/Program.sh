#!/bin/bash
# Alias-3

:'
>>>> Aliases work only within the current terminal session.
        Once the terminal is closed, all aliases will be lost.
>>>>
>>>>
>>>>
'

# Create an interactive delete alias.
alias del="rm -i"

# Use the alias to delete a file interactively.
del

# Remove a specific alias.
unalias del

# To save aliases permanently:
# Add them to the ~/.bashrc file.

# Display all currently defined aliases.
alias

echo "Hello World"
