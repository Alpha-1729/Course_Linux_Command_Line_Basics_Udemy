@ECHO OFF

CD ..

git status
ECHO.

SET /P commitMessage="Commit Message: "

git add --all
git rm -r --cached config.json
git commit -m "%commitMessage%"

TIMEOUT /T 20