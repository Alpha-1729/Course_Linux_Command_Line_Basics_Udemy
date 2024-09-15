import os
import json
import platform

CONFIG_FILE = "configuration.json"


def load_config():
    """Load the configuration file."""
    try:
        with open(CONFIG_FILE, "r") as file:
            return json.load(file)
    except FileNotFoundError:
        print("Config file not found!")
    except json.JSONDecodeError:
        print("Error parsing the config file!")
    return None


def display_help(configs, current_platform):
    """Display the available commands with color formatting, filtering by platform."""
    # ANSI escape codes for color
    RESET = "\033[0m"
    BOLD = "\033[1m"
    GREEN = "\033[92m"
    CYAN = "\033[96m"
    YELLOW = "\033[93m"

    print(f"{GREEN}Welcome to the Templater Application!{RESET}\n")
    print(f"{CYAN}Help - Available commands (for {current_platform}):{RESET}")

    for script in configs["scripts"]:
        script_platform = script.get("platform", "*").lower()

        # Display commands only for the current platform or if platform is '*'
        if script_platform == "*" or script_platform == current_platform:
            command = script["command"]
            description = script["description"]
            print(f"{YELLOW}Command:{RESET} '{BOLD}{command}{RESET}' - {description}")

    print(f"\n{CYAN}Type 'help' for this message or 'q' to quit{RESET}\n")


def run_command(matched_script, current_platform):
    """Run the matched script based on its type and platform."""
    script_type = matched_script.get("type")
    script_path = matched_script.get("path", "")
    script_platform = matched_script.get("platform", "*").lower()

    # Check platform compatibility
    if script_platform != "*" and script_platform != current_platform:
        print(f"Command not supported on this platform: {current_platform}")
        return

    print(f"Running: {matched_script['description']}")

    # Run based on the type of script
    try:
        if script_type == "python":
            os.system(
                f"python3 {script_path}"
                if current_platform != "windows"
                else f"python {script_path}"
            )
        elif script_type == "batch":
            os.system(
                f"{script_path}"
                if current_platform == "windows"
                else f"echo 'Batch file can only run on Windows'"
            )
        elif script_type == "bash":
            os.system(
                f"bash {script_path}"
                if current_platform == "linux"
                else f"echo 'Bash script can only run on Linux'"
            )
        else:
            print(f"Unknown script type: {script_type}")
    except Exception as e:
        print(f"Error occurred: {e}")


def main():
    """Main function for running the console application."""
    configs = load_config()
    current_platform = platform.system().lower()

    if not configs or "scripts" not in configs:
        print("Invalid configuration. Exiting...")
        return

    display_help(configs, current_platform)

    while True:
        user_input = input("\nEnter your command: ").strip().lower()

        if user_input == "q":
            print("Exiting...")
            break
        elif user_input == "help":
            display_help(configs, current_platform)
        else:
            matched_script = next(
                (
                    script
                    for script in configs["scripts"]
                    if script["command"] == user_input
                ),
                None,
            )

            if matched_script:
                run_command(matched_script, current_platform)
            else:
                print("Invalid command, please try again.")


if __name__ == "__main__":
    main()
