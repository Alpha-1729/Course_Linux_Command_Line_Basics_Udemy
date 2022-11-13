#!usr/bin/python3
# Code to run a file located in any other folder.
# Select only python file.

import os
from tkinter import filedialog
from tkinter import *

root = Tk()
root.withdraw()

file_name = filedialog.askopenfilename(
    initialdir=os.getcwd(), title="Select a file")
os.system('python "{}"'.format(file_name))
