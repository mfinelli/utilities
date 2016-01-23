#!/bin/bash

# Usage: ./b27z.sh "bucket_name"

# This script will upload the directory contents (expected to be a split 7z
# archive) to Backblaze's B2 cloud service. It uploads files using by taking
# the first letter of the archive name and uses that as a containing folder.
# The idea there is to split every archive into a lettered (or numbered)
# folder first. Then, it will take the archive name and create that folder as
# well which will store all of the split volumes for that archive.
#
# Resulting in the following structure on B2:
#
# a\
#     a-thing\
#         a-thing.001
#         a-thing.002
#         a-thing.003
#
# Obviously, this requires the b2 command-line tool as well as an authorized
# account.

# @see http://stackoverflow.com/a/1405641
# @see http://stackoverflow.com/a/2264537

for f in $(ls)
do
    # Get just the filename (no extension).
    archive="${f%.*}"

    # Get the "lettered" folder. Then, ensure it's lowercase.
    folder="${archive:0:1}"
    folder="${folder,,}"

    destination="$folder/$archive/$f"

    b2 upload_file "$1" "$f" "$destination"
done
