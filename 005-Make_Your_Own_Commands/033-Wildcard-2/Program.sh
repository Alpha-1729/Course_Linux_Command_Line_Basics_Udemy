#!/bin/bash
# Wildcard-2

:'
>>>> We can use character classes in wildcards in Linux.
>>>>
>>>>
>>>>
'

# Copy all files that start with 'a', 'b', or 'c' into the folder.
cp [abc]* destinationDirectory

# Copy all files that do not start with 'a', 'b', or 'c' into the folder.
cp [!abc]* destinationDirectory

# Copy all files that start with a number (0-9).
cp [0-9]* destinationDirectory

# Copy all files that start with an uppercase character.
cp [[:upper:]]* destinationDirectory

# Copy all files that start with a lowercase character.
cp [[:lower:]]* destinationDirectory

# Copy all files that end with a digit.
cp *[[:digit:]] destinationDirectory

# Copy all files that start with an alphabetic character.
cp [[:alpha:]]* destinationDirectory

# Copy all files that start with an alphanumeric character.
cp [[:alnum:]]* destinationDirectory

# Copy all files that start with a digit and end with an alphabet.
cp [[:digit:]]*[[:alpha:]] destinationDirectory

# Copy all files that do not start with a digit.
cp [![:digit:]]* destinationDirectory

echo "Hello World"
