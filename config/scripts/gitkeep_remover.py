#!/usr/bin/env python3
# Script to remove .gitkeep files from non-empty directories, excluding directories where .gitkeep is the only file.

import os
from pathlib import Path

# Change dir to two dir up.
os.chdir(Path(__file__).parents[2])

# List all dir and avoid the .git dir and config folder.
dir_list = list(filter(os.path.isdir, os.listdir()))
dir_list.remove(".git")

for directory in dir_list:
    for root, dirs, files in os.walk(directory):
        # Remove .gitkeep file if the directory is not empty and it is not the only file.
        if ".gitkeep" in files:
            if len(files) > 1 or len(dirs) > 0:
                gitkeep_file_path = os.path.join(root, ".gitkeep")
                os.remove(gitkeep_file_path)
                print(f"Removed {gitkeep_file_path}")
