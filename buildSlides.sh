#!/bin/sh

# get submodules (reveal.js)
git submodules init
git pull --recurse-submodules

# run local jekyll server; will be served at localhost:8080
docker run --rm \
  --volume="$PWD:/srv/jekyll" -p 8080:4000 \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve

