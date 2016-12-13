#!/bin/zsh

markdown resume.md -t resume -s style/style.css > index.html

# `markdown` is restrictive on changing <head> and <body>, so do it after
sed -i '' \
    -e $'s#</head>#  <meta name="viewport" content="width=device-width">\\\n</head>#' \
    -e $'s#</body>#<a href="resume.pdf">pdf</a>\\\n</body>#' \
    index.html

html-pdf index.html resume.pdf
