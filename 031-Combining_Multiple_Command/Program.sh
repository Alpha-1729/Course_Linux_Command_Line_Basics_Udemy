#!/bin/bash
# Combining Multiple Command

:'
>>>>
>>>>
>>>>
>>>>
'

# Using semicolon method.
# Semicolon ignores the invalid command and execute the next command.
date; cal; echo "Hello world";

# After executing the command, you can exit the terminal.
mkdir Hello1; date; exit;

# Other commands after the exit command will not work.
date; exit; mkdir Hello2

# Using double ampersand (&&) method.
date && cal && mkdir Hello

# Double ampersand method work on the princle of Close Circuit Evaluation.
# Once it encountered an error, It will stop working.
CAL && date && mkdir Hello

echo "Hello World"