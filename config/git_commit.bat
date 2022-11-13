git status
set /p message="Message to commit: "
git add --all
git rm -r --cached config.json
git commit -m "%message%"
timeout /t 20