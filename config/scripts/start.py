import os
import json
import platform
from pathlib import Path
from tkinter import *

show_all_btn = False

config_root_path = Path(__file__).parents[1]

# Read the config from the config.json file.
config_path = os.path.join(config_root_path, 'config.json')
with open(config_path, 'r') as config_file:
    config_data = json.load(config_file)

# Change dir to script path.
script_path = os.path.join(config_root_path, platform.system().lower())
os.chdir(script_path)


def move_window(event):
    root.geometry(f'+{event.x_root}+{event.y_root}')

    with open(config_path, 'r') as config:
        config_info = json.load(config)
    # Update the coordinates in the config file.
    config_info['coordinate']['x'] = event.x_root
    config_info['coordinate']['y'] = event.y_root
    with open(config_path, 'w') as config:
        json.dump(config_info, config)


def show_all():
    global show_all_btn, root
    show_all_btn = not show_all_btn

    if show_all_btn:
        root.geometry('{}x{}'.format(grid_length, grid_breadth))
        root.attributes("-alpha", 1)
    else:
        root.geometry('{}x{}'.format(btn_length, btn_breadth))
        root.attributes("-alpha", 0.8)


def create_section():
    os.startfile('CreateSection.bat')


def create_template():
    os.startfile('CreateTemplate.bat')


def execute_code():
    os.startfile('ExecuteCode.bat')


def execute_other_code():
    os.startfile('ExecuteOtherCode.bat')


def git_status():
    os.startfile('GitStatus.bat')


def git_commit():
    os.startfile('GitCommit.bat')


def git_push():
    os.startfile('GitPush.bat')


x = config_data['coordinate']['x']
y = config_data['coordinate']['y']

grid_length = config_data['grid']['length']
grid_breadth = config_data['grid']['breadth']

btn_length = config_data['button']['length']
btn_breadth = config_data['button']['breadth']

root = Tk()
root.title('')
root.geometry('{}x{}+{}+{}'.format(btn_length, btn_breadth, +x, +y))

# Buttons

# Button to show and hide all other buttons.
btn_show_hide = Button(root, text="> ", bg="yellow", fg="black", font=('Arial Bold', '12'), command=show_all)
btn_section = Button(root, text="S", bg="green", fg="black", font=('Arial Bold', '12'), command=create_section)
btn_template = Button(root, text="T", bg="green", fg="black", font=('Arial Bold', '12'), command=create_template)
btn_exec = Button(root, text="E", bg="red", fg="black", font=('Arial Bold', '12'), command=execute_code)
btn_exec_other = Button(root, text="O", bg="red", fg="black", font=('Arial Bold', '12'), command=execute_other_code)
btn_git_status = Button(root, text="S", bg="orange", fg="black", font=('Arial Bold', '12'), command=git_status)
btn_git_commit = Button(root, text="C", bg="orange", fg="black", font=('Arial Bold', '12'), command=git_commit)
btn_git_push = Button(root, text="P", bg="orange", fg="black", font=('Arial Bold', '12'), command=git_push)

btn_show_hide.grid(row=0, column=0)
btn_git_status.grid(row=0, column=1)
btn_git_commit.grid(row=0, column=2)
btn_git_push.grid(row=0, column=3)
btn_section.grid(row=1, column=0)
btn_template.grid(row=1, column=1)
btn_exec.grid(row=1, column=2)
btn_exec_other.grid(row=1, column=3)

root.update()

root.resizable(False, False)

root.bind('<B1-Motion>', move_window)

# Changing the opacity of tkinter window.
root.attributes("-alpha", 0.8)

# Create the gui window above all other apps
root.attributes("-topmost", True)
root.overrideredirect(True)
root.lift()
root.mainloop()
