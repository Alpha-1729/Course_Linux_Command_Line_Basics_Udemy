#!usr/bin/python3
# Script to add .gitkeep file in all empty directories.

import os
from pathlib import Path

# Change dir to two dir up.
os.chdir(Path(__file__).parents[2])

# List all dir and avoid the .git dir and config folder.
dir_list = list(filter(os.path.isdir, os.listdir()))
dir_list.remove('.git')
dir_list.remove('config')

# Create .gitkeep file in all empty directories.
for directory in dir_list:
    for root, dirs, files in os.walk(directory):
        if not os.listdir(root):
            gitkeep_file_path = os.path.join(root, '.gitkeep')
            open(gitkeep_file_path, 'w').close()
