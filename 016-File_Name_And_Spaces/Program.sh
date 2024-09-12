#!/bin/bash
# File Name And Spaces

:'
>>>>
>>>>
>>>>
>>>>
'

# Create a directory with spaces in its name.
mkdir 'Hello World'
# OR
mkdir "Hello World"
# OR
# Use backslashes to escape spaces.
mkdir Hello\ World
# For directories with multiple spaces.
mkdir Hello\ \ World

# Remove directories with spaces in their names.
rmdir "Hello World"
rmdir 'Hello World'
rmdir Hello\ World

echo "Hello World"
