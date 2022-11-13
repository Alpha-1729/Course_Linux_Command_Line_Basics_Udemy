#!/bin/bash
# Creating Links

:'
>>>> Hard links are not allowed for directories.
>>>>
>>>>
>>>>
'

# To show the Inode number of a file.
ls -i

# To show the Inode number of all files and folders in the root directory.
ls -i /

# To show the file size.
ls -l

# To create a hard link of a file.
ln original.txt hardlink1   # ln -> link
ln original.txt hardlink2

# Create a soft link of a file.
ln -s original.txt softlink1
ln -s original.txt softlink2

# Create a soft link of a directory.
ln -s Directory1 SoftDir1

echo "Hello World"