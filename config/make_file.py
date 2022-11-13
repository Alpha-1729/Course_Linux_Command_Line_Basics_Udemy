#!usr/bin/python3
# Folder number is retrieved from the "config.json" file.
# Added logic to copy all folder and files into the newly created folder.

import os
import json
import shutil

config_file_path = os.path.join(os.getcwd(), "config.json")
template_folder_path = os.path.join(os.getcwd(), "template")

# Read the folder number from the config.json file.
with open(config_file_path, "r") as json_file:
    json_data = json.load(json_file)

folder_number = json_data["folder_number"]

# Path of the main project of the folder.
root_folder_path = "../"

name = input("Enter the folder name: ")
name = [word.capitalize() for word in name.split(' ')]
name = '_'.join(name)
topic_name = name.replace('_', ' ')
folder_name = "{}-{}".format(str(folder_number).zfill(3), name)
destination_folder_path = os.path.join(root_folder_path, folder_name)

# Moving all the content from the template folder to the destination.
shutil.copytree(template_folder_path, destination_folder_path)

# Looping through output folder and replace the place holder in the script.
for root_dir, sub_dir, file_list in os.walk(destination_folder_path):
    if file_list != []:
        for file in file_list:
            full_file_path = os.path.join(root_dir, file)

            # Read the content in the file and replace placeholders.
            in_file = open(full_file_path, errors="ignore")
            file_content = in_file.read()

            file_content = file_content.replace("<topic>", topic_name)

            with open(full_file_path, "w") as out_file:
                out_file.write(file_content)

# Update the folder number in the config.json file.
json_data["folder_number"] += 1
with open(config_file_path, "w") as json_file:
    json.dump(json_data, json_file)
