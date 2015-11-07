#!/bin/bash
rm -rf deploy
cp -R vendor static deploy
(
cd deploy
git init
git add -A
git commit -m "Deployed to Github Pages"
git push --force --quiet git@github.com:FBDG/ironhee-2015-presentation.git master:gh-pages > /dev/null 2>&1
cd -
)
