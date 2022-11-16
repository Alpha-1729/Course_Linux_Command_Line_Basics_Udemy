#!/bin/bash
# Remove Files Using Rm Command

:'
>>>>
>>>>
>>>>
>>>>
'

# Remove file.
rm fileName

# Remove multiple files.
rm file1 file2 file3

# Remove non-empty directories.
rm -R folderName
# OR
rm -r folderName

# Ask confirmation before deleting a file.
# -i interative
rm -i fileName    # Press y to delete, and n to not delete.

# Ask confirmation defore deleting all individual files and sub-folders in a folder.
# Type y, if you want to delete file and Type n, to not delete.
rm -Ri folderName

# Forcefully delete files without any message.
# It will show any error message if file not exists.
rm -f file1

# Show verbose message of the file being deleted.
rm -Rv folderName

# Remove a folder and a file.
rm -R folderName fileName
echo "Hello World"