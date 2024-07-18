#!/bin/bash
# Hard Links Vs Soft Links

:'
>>>> INODE
        Every files in the system has an inode(Index Node).
        Its like a database of a file, it contain many information about the file except the file contents and name.
        They contain the following information.
            Inode Number
            File Size
            Owner Information
            Permissions
            File Type
            Number of Links Etc.

>>>> There are two type of links in linux.
        Soft Link:
            It a pointer to the original file.
            It has less file size than the original file.
            Same like shortcut in windows.
            It is also known as symbolic link.
            Inode number of the soft link is different from the Inode number of original file.
            If we delete the original file, the soft link will become useless.
        Hard Link:
            Hard link is basically a diferent name of the same file.
            It has same file size as that of original file.
            Same Inode number.
            Deleting the original file will not affect the hard links.

>>>>
>>>>
'

echo "Hello World"
