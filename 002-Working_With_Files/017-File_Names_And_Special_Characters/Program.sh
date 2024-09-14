#!/bin/bash
# File Names And Special Characters

:'
>>>> Special Symbols in Terminals.
        $ < > & | ; " \ single_quotes
        These characters cannot be used in folder or file names as they have special meanings in Linux.
>>>> Two symbols that cannot be used in the terminal are:
        Forward slash (/)
        Null character.
>>>>
>>>>
'

# Create a folder with a dollar symbol.
mkdir \$dollars

# Create a folder with an ampersand symbol.
mkdir Dog\&Cat

# Create a folder with a backslash symbol.
mkdir One\\Two

echo "Hello World"
