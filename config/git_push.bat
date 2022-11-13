git status
git branch
set /p branch = "Enter the branch name: "
git add config.json
git commit -m "Folder number updated"
python check_empty_folder.py
git add --all
git commit -m ".gitkeep file added"
git push origin %branch%
pause