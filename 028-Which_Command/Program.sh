#!/bin/bash
# Which Command

:'
>>>> Which command is used to get the location of the executable command. 
>>>> Shell builtins are not executable command.
>>>> Shell script, alias are executable commands.
>>>> All executables commands are mostly found in bin or /sur/bin or sbin directory.
>>>> All the commands performed by superuser are seen in sbin directory.
        Eg: reboot command
'

#  Get the location of the executable command.
which cp
which cal
which reboot

# Which command doesn't show anything with shell builtin command.
# In some linux distros, it will show an error.
which cd

echo "Hello World"