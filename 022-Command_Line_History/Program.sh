#!/bin/bash
# Command Line History

:'
>>>> Use up arrow key in the command line to get the previously typed commands.
        This way you can get the last 500 commands in the most linux distros.
>>>>
>>>>
>>>>
'

# To view all the previously typed commands.
history   # It will show the history along with a number.

# To execute the command from the history.
!commandNo

# To show the last 10 history.
history 10

# Edit the history file.
# You can manually add more commands to the history file.
nano ~/.bash_history

# Clearing the history.
history -c
echo "Hello World"