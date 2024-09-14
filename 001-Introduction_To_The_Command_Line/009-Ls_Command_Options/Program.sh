#!/bin/bash
# LS Command Options

: '
>>>>
>>>>
>>>>
>>>>
'

# To display the inode number of the files in the directory.
ls -i

# To display more information about files.
# The first character in the output of ls -l indicates the file type:
# -  : regular file
# l  : symbolic link
# d  : directory
ls -l

# Detailed breakdown of the ls -l output:
#   drwxrwxrwx     1     root    root    4096  Nov 14 23:32    NewFolder
# (permissions) (links) (owner) (group) (size)   (date)         (name)

# To display all files, including hidden files.
# Files that start with a dot (.) are hidden in Linux.
ls -a

# To display files sorted by the last modification date.
ls -t

# To display files in reverse order.
ls -r # The sort order will be opposite to the normal ls output.

# To display all files and directories recursively.
ls -R

# To combine multiple options in the ls command.
ls -i -l -a
# OR
ls -ila

# To display files in reverse order of their modification date.
# Oldest first and newest last.
ls -t -r
# OR
ls -tr

echo "Hello World"
