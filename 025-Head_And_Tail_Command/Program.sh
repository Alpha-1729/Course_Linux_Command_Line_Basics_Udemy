#!/bin/bash
# Head And Tail Command

:'
>>>> head -> Displays the first 10 lines of a file by default.
>>>> tail -> Displays the last 10 lines of a file by default.
>>>>
>>>>
'

# Write the first 1000 numbers to a file.
for ((i = 1; i <= 1000; i++)); do echo $i >>Thousand.txt; done

# Show the first 10 lines of the file.
head fileName

# Show the first 100 lines of the file.
head -n 100 fileName

# Show the last 10 lines of the file.
tail fileName

# Show the last 100 lines of the file.
tail -n 100 fileName

echo "Hello World"
