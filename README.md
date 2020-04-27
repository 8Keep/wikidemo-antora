This is a preview of an alternative interface for the jMonkeyEngine wiki.

This repo contains all wiki asciidoc source files, as well as the open source software Antora to 
generate documentation static files from the sources.

### Development
Antora setup with nodejs is not needed to edit documentation. All is needed is to clone the repository, 
edit any .adoc files you need, and create a pull request.
To set up the Antora environment, you'll need nodejs (tested with node 12) and yarn.
Run:
```
yarn install
yarn antora
```
This will install the needed dependencies and run the static site generator.

Static files are stored in the gh-pages branch. The `publishToGithubPages.sh` script is used to automatically transfer the `public/` directory from the master branch to the gh-pages branch.

TODO (in no particular order):
- Custom jMonkey style theme
- Versioning
- Github Actions CI
- More testing
- Some asciidoc code is not ported over correctly (emoji and javadoc links)
