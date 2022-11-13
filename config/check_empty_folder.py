#!usr/bin/python3
# Code to add .gitkeep file in empty folders.

import os
os.chdir("../..")     # Go up two folder.

# File name for empty file.
file_name = ".gitkeep"

# List all main folder and avoid the git folder
main_folder = [i for i in os.listdir() if os.path.isdir(i) and i != ".git"]

for folders in main_folder:
    for root, dirs, files in os.walk(folders):

        # Checking whether folder is empty or not
        if not os.listdir(root):
            with open("{}/{}".format(root, file_name), "w") as file:
                file.write("")
