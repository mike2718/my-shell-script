#!/bin/bash
# tested on fedora14
# enscript only supports ascii chars :(

# convert .txt to .ps
find . -type f -name "*.txt" | while read ONELINE; do enscript "$ONELINE" -p "$(echo "$ONELINE" | sed 's/.txt/.ps/g')"; done

# convert .ps to .pdf
find . -type f -name "*.ps" | while read ONELINE; do ps2pdf "$ONELINE" "$(echo "$ONELINE" | sed 's/.ps/.pdf/g')"; done

# delete unneeded .ps files
mkdir ps-files
find . -type f -name "*.ps" -exec mv {} ps-files \;
rm -fr ps-files

# move .pdf files to dir
mkdir pdf-files
find . -type f -name "*.pdf" -exec mv {} pdf-files \;
