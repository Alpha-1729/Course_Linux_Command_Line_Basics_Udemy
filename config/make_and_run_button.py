#!usr/bin/python3
# Code to add pre-configured button onto screen.
"""
>>>>Link reference
    >>>>Link: https://stackoverflow.com/questions/2307464/what-is-the-difference-between-root-destroy-and-root-quit
    >>>>Link for lift method: https://stackoverflow.com/questions/1892339/how-to-make-a-tkinter-window-jump-to-the-front
>>>> Pixel Location in HD Display (1250,550)
"""

import os
import json
import pyautogui
from tkinter import *
from tkinter import ttk
global show_all, root

# Box variables.
# x and y coordinate on screen to display button.
with open("config.json", "r") as json_file:
    data = json.load(json_file)

x = data["x_coordinate"]
y = data["y_coordinate"]

# Text size in display setting.
text_size_percentage = 100
text_size = text_size_percentage / 100

# length and breadth of the outer box.
l = int(108//text_size)
b = int(64//text_size)

# Length and breadth of the smallest button.
b_l = int(24//text_size)
b_b = int(32//text_size)

show_all = 0    # For toggle the other buttons.

# All functions

def make_file():
    os.startfile("make_file.bat")

def run_file():
    os.startfile("run_file.bat")

def run_other():
    os.startfile("run_other.bat")

def git_commit():
    os.startfile("git_commit.bat")

def git_status():
    os.startfile("git_status.bat")

def git_push():
    os.startfile("git_push.bat")

def git():
    os.startfile("open_cmd.bat")

def showAll():
    global show_all, root
    show_all = int(not show_all)
    if show_all == 1:
        # Show the other buttons.
        root.geometry('{}x{}+{}+{}'.format(l, b, +x, +y))
        # Transparent the tkinter window.
        root.attributes("-alpha", 1)
    else:
        # Hide the other buttons.
        root.geometry('{}x{}+{}+{}'.format(b_l, b_b, +x, +y))
        # Change the opacity of tkinter window.
        root.attributes("-alpha", 0.8)

# get_coordinate()

# Main code starts here
root = Tk()
root.geometry('{}x{}+{}+{}'.format(b_l, b_b, +x, +y))

buttonM = Button(root, text="M", bg="red", font=(
    'Arial Bold', '12'), command=make_file)
buttonR = Button(root, text="R", bg="green", font=(
    'Arial Bold', '12'), command=run_file)
buttonO = Button(root, text="O", bg="yellow", font=(
    'Arial Bold', '12'), command=run_other)
buttonC = Button(root, text="C", bg="orange", font=(
    'Arial Bold', '12'), command=git_commit)
buttonS = Button(root, text="S", bg="pink", font=(
    'Arial Bold', '12'), command=git_status)
buttonP = Button(root, text="P", bg="violet", font=(
    'Arial Bold', '12'), command=git_push)
buttonG = Button(root, text="G", bg="cyan", font=(
    'Arial Bold', '12'), command=git)

# Button to show and hide all other buttons.
buttonSH = Button(root, text=">", bg="yellow", font=(
    'Arial Bold', '12'), command=showAll)
# font,height,width parameter work for tkinter Button and not for ttk Button

# buttonM.pack(side = LEFT)
# buttonG.pack(side = RIGHT)
# buttonR.pack(side = RIGHT)
# buttonO.pack(side = LEFT)
# buttonS.pack(side = LEFT)

buttonSH.grid(row=0, column=0)
buttonM.grid(row=0, column=1)
buttonR.grid(row=0, column=2)
buttonO.grid(row=0, column=3)
buttonG.grid(row=1, column=0)
buttonS.grid(row=1, column=1)
buttonC.grid(row=1, column=2)
buttonP.grid(row=1, column=3)

# Hiding a button.
# buttonP.grid_forget()

root.update()
# Changing the opacity of tkinter window.
root.attributes("-alpha", 0.8)

# Create the gui window above all other apps
root.attributes("-topmost", True)
root.overrideredirect(True)
root.lift()
# root.destroy()
root.mainloop()
