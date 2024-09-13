#!/bin/bash
# Wilcards-1

:'
>>>> A wildcard is a symbol that represents one or more characters.
        * -> Represents any number of characters.
        ? -> Represents a single character.
>>>>
>>>>
>>>>
'

# Copy all files to a folder.
cp * destinationDirectory

# Remove all files.
rm *

# Copy all files starting with "file" to a folder.
cp file* destinationDirectory

# Copy all files starting with "n" and ending with "e" to a folder.
cp n*e destinationDirectory

# Copy all files starting with "file" and followed by exactly one character with a .txt extension.
cp file?.txt destinationDirectory

echo "Hello World"
