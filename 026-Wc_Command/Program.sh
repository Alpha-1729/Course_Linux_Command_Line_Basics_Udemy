#!/bin/bash
# Wc Command

:'
>>>> wc -> word count utility to count lines, words, and characters in a file.
>>>>
>>>>
>>>>
'

# View the word count, line count, and character size of a file.
wc fileName
# Output format:
# Line Count | Word Count | Character Size (bytes) | fileName

# Display only the line count.
wc -l fileName

# Display only the word count.
wc -w fileName

# Display the character size in bytes.
wc -c fileName
# OR
# Check the file size using ls.
ls -l fileName

# Display the number of characters in the longest line.
wc -L fileName

echo "Hello World"
