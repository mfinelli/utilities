#!/bin/bash

# Usage: ./find-md5.sh

# This script will search the directories (one level only) for md5 sum files
# and change into them (so that the md5sums are relative) and run the check.

find . -maxdepth 1 -mindepth 1 -type d | \
    while read line; do
        cd "$line"
        find . -name *.md5 -exec md5sum -c "{}" \;
        cd ..
    done
