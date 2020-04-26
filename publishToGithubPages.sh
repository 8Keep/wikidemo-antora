#!/bin/sh

echo "Uploading to gh-pages..."

yarn antora
git checkout gh-pages

#make sure this includes everything that could be generated, to clear the static files completely from one build to the next
rm -r _/
rm -r "jme3/"
rm -r "index.html"
rm -r "404.html"
rm -r "site.xml"
rm -r ".cache/"

mv public/* ./
mv public/.nojekyll ./
rm -r public
git add --all
git commit -m "Auto-uploading site to gh-pages"