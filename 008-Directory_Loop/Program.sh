#!/bin/bash
# Directory Loop

:'
>>>> I have a folder named A.
        In the directory A, I created a link B to the parent directory A.
        Then I change directory between link and parent directory.
>>>> The screenshot of the directory looping is added in the folder. See the image.
>>>>
>>>>
'
cd A
ln -s .. B
cd B
cd A
cd B
cd A

echo "Hello World"
