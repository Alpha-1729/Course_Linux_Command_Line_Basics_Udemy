#!/bin/bash
# Combining Multiple Command

:'
>>>>
>>>>
>>>>
>>>>
'

# Using the semicolon method.
# Semicolons separate commands, allowing them to run sequentially regardless of errors in previous commands.
date; cal; echo "Hello world";

# You can use semicolons to chain commands, but the terminal will exit after the final command.
mkdir Hello1; date; exit;

# Commands after the exit command will not execute.
date; exit; mkdir Hello2

# Using the double ampersand (&&) method.
# Commands are executed sequentially only if the previous command succeeds.
date && cal && mkdir Hello

# The double ampersand method works on the principle of short-circuit evaluation.
# If an error occurs, execution of subsequent commands will stop.
CAL && date && mkdir Hello

echo "Hello World"
