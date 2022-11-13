#!usr/bin/python3
# Code to run latest file in current working directory.

import os
import json

# Read the folder number from the config.json file.
with open("config.json", "r") as json_file:
    json_data = json.load(json_file)
folder_number = json_data["folder_number"]

os.chdir("..")   # Go 2 folder up.

# For running the current working file.
all_folder = [folder for folder in os.listdir() if os.path.isdir(folder)]
folder_number = str(folder_number - 1).zfill(3)
for folder in all_folder:
    if folder.startswith(folder_number):
        os.chdir(folder)
        os.system("python Program.py")
