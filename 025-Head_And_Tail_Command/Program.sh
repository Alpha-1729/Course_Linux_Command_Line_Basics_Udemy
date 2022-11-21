#!/bin/bash
# Head And Tail Command

:'
>>>> head -> To view the first 10 lines of a file.
>>>> tail -> To view the last 10 lines of a file.
>>>>
>>>>
'
# Writing first 1000 number to a file.
for((i=1;i<=1000;i++)); do echo $i >> Thousand.txt;

# To show first 10 line of the file.
head fileName

# To show first 100 line of the file.
head -n 100 fileName

# To show last 10 line of the file.
tail fileName

# To show last 100 line of the file.
tail -n 100 fileName

echo "Hello World"