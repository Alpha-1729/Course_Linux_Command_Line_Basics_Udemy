@ECHO OFF

CD ..

git status
ECHO.

git branch
ECHO.

SET /P branchName="Branch Name: "

git add config.json
git commit -m "Add latest config file."

REM Add .gitkeep file in empty directories.
python scripts/gitkeep_adder.py

git add --all
git commit -m "Add .gitkeep file"

git push origin %branchName%

TIMEOUT /T 20