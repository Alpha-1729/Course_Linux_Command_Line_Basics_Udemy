#!/bin/bash
# Remove Files Using Rm Command

:'
>>>>
>>>>
>>>>
>>>>
'

# Remove file.
# It will show warning if file not exist.
rm fileName

# Remove multiple files.
rm fileName1 fileName2 fileName3

# Remove non-empty directories.
rm -R folderName
# OR
rm -r folderName

# Ask confirmation before deleting a file.
# -i interative
rm -i fileName # Press y to delete, and n to not delete.

# Ask confirmation defore deleting all individual files and sub-folders in a folder.
# Type y, if you want to delete file and type n, to not delete.
rm -Ri folderName

# Forcefully delete files without any message.
# If the file not exist, it will not show any message.
rm -f file1

# Show verbose message of the file being deleted.
rm -Rv folderName

# Remove a folder and a file.
rm -R folderName fileName
echo "Hello World"
