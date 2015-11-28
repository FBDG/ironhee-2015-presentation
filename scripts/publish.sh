#!/bin/bash
rm -rf publish
mkdir publish
cp -R index.html css js images lib plugin publish
(
cd publish
git init
git add -A
git commit -m "published to Github Pages"
git push --force --quiet git@github.com:FBDG/ironhee-2015-presentation.git master:gh-pages > /dev/null 2>&1
cd -
)
