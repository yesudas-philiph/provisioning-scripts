#!/bin/bash
git init
git config user.name "yesudas-philiph"
git config user.email "yesudasphilip03@gmail.com"
git remote add testlab git@github.com:yesudas-philiph/provisioning-scripts.git
git status 
git add .
git commit -m "message"
git log
git push testlab master
