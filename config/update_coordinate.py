# Script to update the coordinate to place the button tile.
# After running the script.
# Click on the exact location five times to add that coordinate in the json file.

import json
from pynput import mouse

global click_count
click_count = 0

mouse_ = mouse.Controller()
button = mouse.Button

def on_click(x, y, button, pressed):
    global click_count
    click_count += 1
    if button.name == 'left':
        if click_count > 10:
            update_coordinate(x, y)
            return False

def update_coordinate(x, y):
    # Read the content in the json file.
    with open("config.json", "r") as json_file:
        data = json.load(json_file)

    data["x_coordinate"] = x
    data["y_coordinate"] = y

    # Write the content in the json file.
    with open("config.json", "w") as json_file:
        json.dump(data, json_file)

# Listener for mouse click.
with mouse.Listener(on_click=on_click) as listener:
    listener.join()
