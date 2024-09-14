#!/bin/bash
# View Files With Cat And Tac

:'
>>>> cat -> catenate (similar to concatenate, used to display file contents).
>>>> tac -> displays the content of the file in reverse order.
>>>>
>>>>
'

# View the content of a file.
cat fileName

# View the content of multiple files.
# It will display the content of fileName1 followed by fileName2.
cat fileName1 fileName2

# Show the content of a file in reverse order.
tac fileName

# View the content of multiple files in reverse order.
tac fileName1 fileName2

echo "Hello World"
