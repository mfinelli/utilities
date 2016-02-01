#!/bin/bash

# Usage: ./gzipped.sh http://www.example.com

# This script will let you compare the difference in download size by sending
# the correct accept-encoding headers between uncompressed and gzipped files.
# Useful for ensuring that your server is configured correctly.

echo -n "Not gzipped: "
curl "$1" --silent --write-out "%{size_download}\n" --output /dev/null

echo -n "Gzipped: "
curl "$1" --silent -H "Accept-Encoding: gzip,deflate" \
    --write-out "%{size_download}\n" --output /dev/null
