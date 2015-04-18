#!/bin/bash

# Usage: ./bw-pdf.sh input.pdf output.pdf
# Adapted from: http://unix.stackexchange.com/a/93971

# This command will turn a color PDF into a black and white PDF.
# Note: Obviously, this requires ghostscript to work.

gs \
    -sOutputFile="$2" \
    -sDEVICE=pdfwrite \
    -sColorConversionStrategy=Gray \
    -dProcessColorModel=/DeviceGray \
    -dCompatibilityLevel=1.4 \
    -dNOPAUSE \
    -dBATCH \
    "$1"
