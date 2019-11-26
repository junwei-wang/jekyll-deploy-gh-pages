
# GitHub Action to Push Jekyll Builds on GitHub Pages

Based on [BryanSchuetz/jekyll-deploy-gh-pages](https://github.com/BryanSchuetz/jekyll-deploy-gh-pages).

Enhanced with [plantuml](http://plantuml.com/).

## Example

```yml
name: Jekyll Deploy

on: [push]

jobs:
  build_and_deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v1
      - name: Build & Deploy to GitHub Pages
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
          GITHUB_REPOSITORY: ${{ secrets.GITHUB_REPOSITORY }}
          GITHUB_ACTOR: ${{ secrets.GITHUB_ACTOR }}
        uses: junwei-wang/jekyll-deploy-gh-pages@master
```
