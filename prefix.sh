#!/bin/bash

# Usage: ./prefix.sh "old_prefix" "new_prefix"
# Adapted from: http://stackoverflow.com/a/13215700

for file in "$1"*
do
    mv -v "$file" "${file/#$1/$2}"
done
