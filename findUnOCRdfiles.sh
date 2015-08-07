#!/bin/bash

# Be sure to move into your Dropbox folder or something
# before running this. You probably don't want to get every
# PDF on your computer...or maybe you do?

toOCR="$HOME/Desktop/toocr.txt"

# meh. I don't care. Just made the file
# into a json array to put in the scpt file
echo "ocrFiles=[" > "$toOCR"


SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for f in `find . -name *pdf`;
do
    if ! grep -q Font "$f"
    then
         echo "\"`realpath $f`\"," >> "$toOCR"
    # else
    #      echo "$f does not need to be OCRd"
    fi
done
IFS=$SAVEIFS
