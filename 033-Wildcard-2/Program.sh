#!/bin/bash
# Wildcard-2

:'
>>>> We can use a character class in the wildcard in linux.
>>>>
>>>>
>>>>
'

# Copy all file starts with a,b or c into the folder.
cp [abc]* destinationDirectory

# Copy all file does not starts with a,b or c into the folder.
cp [!abc]* destinationDirectory

# Copy all files starts with a number.
cp [0-9]* destinationDirectory    # ) and 9 is included in the class.

# Copy all files starts with an upper case character.
cp [[:upper:]]* destinationDirectory

# Copy all files starts with an lower case character.
cp [[:lower:]]* destinationDirectory

# Copy all files ends with a digit.
cp *[[:digit:]] destinationDirectory

# Copy all the files starts with a alphabet.
cp [["alpha:"]]* destinationDirectory

# Copy all the files starts with a alpha numberic.
cp [["alnum:"]]* destinationDirectory

# Copy all files that does not starts with a number.
cp [![:digit:]]* destinationDirectory
echo "Hello World"