#!/bin/bash
# Which Command

:'
>>>> To get the location of an executable command, use the `which` command.
>>>> Shell builtins are not executable commands.
>>>> Shell scripts and aliases are considered executable commands.
>>>> Executable commands are typically found in directories like /bin, /usr/bin, or /sbin.
>>>> Commands executed by the superuser are often located in the /sbin directory.
        Example: reboot command
'

# Get the location of executable commands.
which cp
which cal
which reboot

# The `which` command does not display anything for shell builtins.
# On some Linux distributions, it may show an error for shell builtins.
which cd

echo "Hello World"
