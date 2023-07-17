#!/bin/bash

# This is needed because GitHub pages expects a CNAME file with the domain
# of the page. This is called in the `npm run deploy` function
echo "www.h2odrinkingwater.com" > build/CNAME

# Fix for https://github.blog/2009-12-29-bypassing-jekyll-on-github-pages/
# We do not want jekyll and svelte creates an _app/ folder that it considers special
touch build/.nojekyll
