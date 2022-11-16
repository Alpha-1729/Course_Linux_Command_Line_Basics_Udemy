#!/bin/bash
# Make Directory And Remove Empty Directory

:'
>>>> rmdir command will only work on non-empty directories.
>>>>
>>>>
>>>>
'

# Create a new directory.
mkdir NewFolder

# Create multiple directories.
mkdir dirname1 dirname2 dirname3

# Remove directory.
rmdir NewFolder

# Remove multiple directories.
rmdir dirname1 dirname2 dirname3

echo "Hello World"