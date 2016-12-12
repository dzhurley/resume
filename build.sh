#!/bin/zsh

markdown resume.md -t resume -s style/style.css > index.html

# `markdown` is restrictive on changning <head>, so do it after
sed -i '' $'s#</head>#  <meta name="viewport" content="width=device-width">\\\n</head>#' index.html

html-pdf index.html resume.pdf
