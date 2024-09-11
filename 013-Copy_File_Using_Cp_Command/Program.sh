#!/bin/bash
# Copy File Using Cp Command

:'
>>>>
>>>>
>>>>
>>>>
'

# Copy a file.
# Creates a copy of 'file1' named 'file2'.
# If 'file2' exists, it will be overwritten; otherwise, it will be created.
cp file1 file2

# Copy multiple files into a folder.
cp file1 file2 file3 destinationFolderName

# Copy a folder into another folder.
cp -R sourceFolderName destinationFolderName

# Ask for confirmation before overwriting files during copy.
# Reply with 'y' or 'n'.
cp -i file1 file2 folderName

# Show a summary with verbose option when copying folders.
cp -Rv folder1 folder2

echo "Hello World"
