#!/bin/bash
# Types Of Commands

:'
>>>> 4 types of Linux commands:
        Executable Programs
            Located in directories like /bin and /usr/bin.
            Example: cp command
        Shell Builtins
            Commands integrated into the shell.
            Example: cd command
        Shell Scripts
            Commands contained within a file.
        Aliases
            User-defined commands, often built from other commands.
            Example: ls command
>>>> The `type` command cannot distinguish between shell scripts and executable commands.
>>>> 
>>>>
'

# Identify the type of a command.
type ls     # Alias
type cp     # Executable command (shows the path of the file)
type bzdiff # Shell script (shows the path of the file)

# Find the type of executable and shell script commands.
# Use the file command.
file /bin/cp
file /bin/bzdiff

# Commands can be symbolic links to other commands.
type cal
file /usr/bin/cal # Symbolic link to ncal

echo "Hello World"
