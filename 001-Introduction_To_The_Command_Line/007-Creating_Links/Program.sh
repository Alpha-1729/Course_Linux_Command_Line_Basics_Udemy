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

# To show the file size in bytes
ls -l

# To create a hard link of a file.
# ln means link
ln original.txt hardLink1
ln original.txt hardLink2

# Create a soft link of a file.
# Will not have same inode number that of parent.
ln -s original.txt softLink1
ln -s original.txt softLink2

# Create a soft link of a directory.
ln -s directory1 softDir1

echo "Hello World"
