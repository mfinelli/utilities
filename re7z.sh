#!/bin/bash

# Usage: ./re7z.sh

# Careful, this script doesn't do any kind of checking on the contents of the
# directory. It should therefore only be run in a directory full of 7zip
# files.

# @see http://stackoverflow.com/a/19482947

for f in $(ls)
do
    # Get the "extension" or part number of the 7zip archive.
    ext="${f##*.}"
    # Get the filename excluding the "7z" part.
    fn="${f%.7z.*}"
    # Now combine them and rename!
    mv -v "$f" "$fn"."$ext"
done
