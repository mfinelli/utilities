#!/bin/bash

# Usage: enc7z.sh folder
# https://info.nrao.edu/computing/guide/file-access-and-archiving/7zip/7z-7za-command-line-guide

# This will create an encrypted 7zip archive (no compression) of a folder.
# Requires the 7z executable to be in the path.

# Ensure that the source folder does not have a trailing slash.
SRC_FOLDER="${1%/}"

# Get the output destination. This should end in ".7z".
read -p "Where to store the archive files? " DEST_FOLDER

# Get the split size (in megabytes).
read -p "Split archive into MB chunks: " SPLIT_SIZE

# Get the password with which to encrypt the archive (AES-256).
# read -sp "Archive password: " ARCHIVE_PASSWORD

# -mx0 to disable compression
# -mhe=on enables archive header encryption
# -p don't pass anything to have 7z prompt itself
7z a -t7z \
    "$DEST_FOLDER" "$SRC_FOLDER" \
    -mx0 \
    -v"${SPLIT_SIZE}"m \
    -mhe=on \
    -p 
