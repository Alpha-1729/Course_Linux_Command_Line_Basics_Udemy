#!/bin/bash
# Directory Loop

: '
>>>> I have a folder named A.
     Inside directory A, I created a symbolic link B pointing to the parent directory of A.
     Then I repeatedly changed directories between the link (B) and the original directory (A).
>>>> The screenshot of the directory loop is included in the folder. See the image.
'
cd A
ln -s .. B
cd B
cd A
cd B
cd A

echo "Hello World"
