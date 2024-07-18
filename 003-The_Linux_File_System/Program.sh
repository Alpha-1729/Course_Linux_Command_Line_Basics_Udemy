#!/bin/bash
# The Linux File System

:'
>>>> The linux file system has tree like structure.
>>>> In linux folders are referred to as directories.
>>>> Linux File System.
        /  -> Root directory.
            bin(binary)
                This directory contains executable programs and commands that can be used by all the users on the system.
            opt(optional)
                This directory contains commercial software products that are not installed by default on your system like Chrome.
            tmp(temporary)
                In this directory you will find temporary files, files that are often changed or deleted.
            var
                It contains variable data that frequently changes over time.
                These include log files, mail spools and other databases.
            home
                A user can store anything in his home directory.
            .
                Current directory.
            ..
                Parent directory.
>>>> Accessing the files in linux.
        Absolute path
            Absolute path begins with the root directory.
        Relative path
            Relative path starts with the current working directory.
'

echo "Hello World"