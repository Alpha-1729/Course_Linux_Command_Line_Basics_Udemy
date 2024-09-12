#!/bin/bash
# Command Line History

:'
>>>> Use the up arrow key in the terminal to scroll through previously typed commands.
        Most Linux distributions store the last 500 commands by default.
>>>>
>>>>
>>>>
'

# View the history of all previously typed commands.
history # Displays a numbered list of commands.

# Execute a command from the history using its number.
!commandNo

# Show the last 10 commands from the history.
history 10

# Edit the history file manually.
# You can add or modify commands in the history file, but changes need to be reloaded.
nano ~/.bash_history

# Clear the entire command history.
history -c

echo "Hello World"
