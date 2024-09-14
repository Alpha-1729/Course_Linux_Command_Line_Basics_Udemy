import os

# Function to rename files in a given directory, starting from 001
def rename_files_in_directory(directory):
    # List all files in the directory
    files = sorted(os.listdir(directory))
    for i, file in enumerate(files):
        # Check if it's a file and not a directory
        old_file_path = os.path.join(directory, file)
        if os.path.isfile(old_file_path):
            # Create new file name with numbering starting from 001
            new_name = f"{i+1:03d}-{file.split('-', 1)[1]}"
            new_file_path = os.path.join(directory, new_name)
            os.rename(old_file_path, new_file_path)
            print(f"Renamed '{file}' to '{new_name}'")

# Main directory paths to process
directories = [
    '002-Working_With_Files', 
    '003-Viewing_And_Editing_Files', 
    '004-Help_Yourself', 
    '005-Make_Your_Own_Commands'
]

# Loop through each directory and rename files within it
for directory in directories:
    rename_files_in_directory(directory)
