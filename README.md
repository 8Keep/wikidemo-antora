https://8keep.github.io/wikidemo-antora/

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

Static files are stored in the gh-pages branch. Github actions is used to automatically update the gh-pages branch.

TODO (in no particular order):
- [ ] Custom jMonkey style theme
- [ ] Versioning
- [x] Github Actions CI
- [x] Javadoc link asciidoctor attribute
- [ ] Fix asciidoctor issues (emojis, waiting on external dependency to fix)
