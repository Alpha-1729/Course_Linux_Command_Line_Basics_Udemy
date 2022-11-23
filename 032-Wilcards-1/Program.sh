#!/bin/bash
# Wilcards-1

:'
>>>> Wildcard is a symbol that represents one or more characters.
        * -> Represents any character.
        ? -> Represents a single character.
>>>>
>>>>
>>>>
'

# Copying all file into a folder.
cp * destinationDirectory

# Copy all files starting with "file" into a folder.
cp file* destinationDirectory

#  Copy all file starts with 'file' and a character after that.
cp file?.txt destinationDirectory

echo "Hello World"