#!/bin/bash
# Copy File Using Cp Command

:'
>>>>
>>>>
>>>>
>>>>
'

# Copy a file.
# Create a copy of the file1 and name it as file2.
# file2 is created only if it is not already there.
# If file2 is already there, it will be overwritten witht the contents of the file1.
cp file1 file2

# Copying multiple files into the folder.
cp file1 file2 file3 destinationFolderName

# Copying folder into another folder.
cp -R sourceFolderName destinationFolderName

# ASk for confirmation before overwriting the files while copying.
# If the same files already exist in the destination folder.
cp -i file1 file2 folderName

# Show the summary using the verbose option.
cp -Rv folder1 folder2

echo "Hello World"