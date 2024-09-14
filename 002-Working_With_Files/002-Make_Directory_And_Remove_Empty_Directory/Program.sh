#!/bin/bash
# Make Directory And Remove Empty Directory

:'
>>>> rmdir command will only work on non-empty directories.
>>>>
>>>>
>>>>
'

# Create a new directory.
mkdir newFolder

# Create multiple directories.
mkdir dirName1 dirName2 dirName3

# Remove directory.
rmdir newFolder

# Remove multiple directories.
rmdir dirName1 dirName2 dirName3

echo "Hello World"
