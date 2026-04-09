Make GitHub repo on github.com

Do this in order:
```bash
mkdir yourProjectName
cd yourProjectName
git init
nvim .gitignore
nvim README.md
git add .
git commit -m "Initial Commit"
git remote add origin git@github.com:YourUsername/YourRepoName.git
git push -u origin main
```

