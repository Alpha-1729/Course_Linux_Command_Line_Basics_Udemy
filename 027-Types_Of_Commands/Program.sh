#!/bin/bash
# Types Of Commands

:'
>>>> 4 types of linux commands.
        Executable Programs
            Found in bin and usr/bin directory.
            Eg: cp command
        Shell builtins
            Eg: cd command
        Shell scripts
            Commands contained in a file.
        Alias
            A command that can be defined by ourselves.
            Usually build from other commands.
            Eg: ls command
>>>> Type command cannot distinguish between shell script and executable command.
>>>> 
>>>>
'

# Identify the type of command.
type ls # Aliased command
type cp # (Executable command) It will show the path of the file.
type bzdiff # (Shell script) It will show the path of the file.

# To find the type of the Executable and Shell script command.
# Use file command.
file /bin/cp
file /bin/bzdiff

# Commands can be links to another link.
type cal
file /usr/bin/cal  # It is a symbolic link to ncal.   

echo "Hello World"