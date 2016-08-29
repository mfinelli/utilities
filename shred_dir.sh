#!/bin/bash

# Usage: ./shred_dir.sh pattern

# This script will change into every directory matching the pattern, shred
# and remove all the files within and then remove the directory itself.

for dir in $(ls | grep "$1")
do
    cd "$dir" && \
        shred -vun4 * && \
        cd .. && \
        rmdir "$dir"
done
