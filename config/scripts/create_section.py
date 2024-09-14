#!usr/bin/python3
# Script to create a section.

import os
import json
from pathlib import Path

# Change dir to two dir up.
os.chdir(Path(__file__).parents[2])

# Read the config from the config.json file.
config_path = os.path.join(os.getcwd(), 'config', 'config.json')
with open(config_path, 'r') as config_file:
    config_data = json.load(config_file)

section_prefix = config_data['section']['prefix']
section_prefix = f'-{section_prefix}' if len(section_prefix.strip()) > 0 else ''

section_number = config_data['section']['number']

section_name = input('Enter Section Name: ')
section_name = [word.capitalize() for word in section_name.split(' ')]
section_name = '_'.join(section_name)

# Create section directory.
section_dir_name = '{}{}-{}'.format(str(section_number).zfill(3), section_prefix, section_name)
os.mkdir(section_dir_name)

# Update the section and template info in the config file.
config_data['section']['number'] += 1
config_data['section']['latest'] = section_dir_name
config_data['template']['number'] = 1  # Reset the template number.
with open(config_path, 'w') as config_file:
    json.dump(config_data, config_file)
