#!/bin/bash
# The Linux File System

:'
>>>> The linux file system has tree like structure.
>>>> In linux, folders are referred to as directories.
>>>> Linux File System.
        /
            root directory.
            top-most directory in the file-system.
        bin (binary)
            This directory contains executable programs and commands that can be used by all the users on the system.
        opt (optional)
            This directory contains commercial software products that are not installed by default on your system like Chrome.
        tmp (temporary)
            In this directory you will find temporary files, files that are often changed or deleted.
        var
            It contains variable data that frequently changes over time.
            These include log files, mail spools and user databases.
        home
            Each user is given a directory under the home directory.
            A user can store anything in his home directory.
        .
            Current directory.
        ..
            Parent directory.
>>>> You can find . and .. under all the directory in the file-system.
>>>> Accessing the files in linux.
        We use forward slash (/) to separate directories.

        Absolute path
            Absolute path begins with the root directory.
            Eg: /home/john/documents/phone.txt
        Relative path
            Relative path starts with the current working directory.
            Eg: ./documents/phone.txt
'

echo "Hello World"
