#!/bin/bash
# Ls Command Options

:'
>>>>
>>>>
>>>>
>>>>
'

# To show the Inode number of the files in the directory.
ls -i

# To show more information about files.
# The first letter in the ls -l will show the file type.
# - means file.
# l means link
# d means directory
ls -l

# Infromation about the ls -l
#    drwxrwxrwx                  1             root                  root                       4096         Nov 14 23:32           NewFolder
# (file permission)     (no of hard links)     owner        (group assigned to file)        (file size)     (created date)      (folder/filename)

# To show the all files including the hidden files.
# All files that starts with the dot will be hidden files in the linux.
ls -a

# To show the files based on the modified date of the files.
ls -t

# To show the files in the reverse order as compared to the ls.
ls -r # sort order will be opposite to the normal ls.

# To show all files and folders in folder recursively.
ls -R

# Combining two options in ls command.
ls -i -l -a
# OR
ls -ila

# To show the files in reverse order of modification date.
ls -t -r
# OR
ls -tr

echo "Hello World"