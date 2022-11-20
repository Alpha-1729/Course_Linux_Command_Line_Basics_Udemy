#!/bin/bash
# File Names And Special Characters

:'
>>>> Special symbols in terminals.
        $ < > & | ; " \ single_quotes
        These characters cannot be used while creating a folder or filename.
        These characters have special meaning in linux.
>>>> Two symbols that cannot be used in the terminal are:
        Forward slash (/)
        Null Character.
>>>>
>>>>
'
# Making a folder with dollar symbol.
mkdir \$dollars

# Making a folder with ampersand symbol
mkdir Dog\&Cat

# Making a folder with Backslash symbol.
mkdir One\\Two

echo "Hello World"