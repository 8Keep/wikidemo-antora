#!/bin/sh

echo "Uploading to gh-pages..."


git checkout gh-pages
mv -R public/ /tmp/wikidemo-antora/

#make sure this includes everything that could be generated, to clear the static files completely from one build to the next
rm -r "_/"
rm -r "jme3/"
rm -r "index.html"
rm -r ".cache/"
mv -R /tmp/wikidemo-antora/ .

git add --all
git commit -m "Auto-uploading site to gh-pages"

git checkout master

