#!/bin/bash
cd C:/Users/nithinsharma.julakan/Downloads/test1

if [ ! -d ".git" ]; then
	git init
fi

#current_branch=$(git branch)

git branch -M main


git remote | grep -q origin || git remote add origin https://github.com/nithin-julakanti/test1.git

git pull origin main

git status
git add .
git commit -m "moving the dags"
git push -u origin main


echo "Successfully, dags have been copied to GitHub"