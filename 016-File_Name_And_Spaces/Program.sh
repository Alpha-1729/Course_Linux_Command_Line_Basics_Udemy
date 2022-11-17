#!/bin/bash
# File Name And Spaces

:'
>>>>
>>>>
>>>>
>>>>
'
# Create a directory with spaces in between.
mkdir 'Hello World'
# OR
mkdir "Hello World"
# OR
# You have to add backslash before each spaces to escape them.
mkdir Hello\ World

# Removing directories with spaces in the directory name.
rmdir "Hello World"
rmdir 'Hello World'
rmdir Hello\ World

echo "Hello World"