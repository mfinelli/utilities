# Utilities
Random helpful scripts.

## BW PDF
This script will convert a color PDF into a black and white PDF.

    $ ./bw-pdf.sh "input.pdf" "output.pdf"

## Enc7z
This script generates an encrypted 7z archive of a folder. It also encrypts
the filenames of the archive. It is intented for large files that are already
compressed and so it does no compression itself. It prompts for the number
of megabytes by which to split the archive, as well as the destination and
password.

    $ ./enc7z "Folder To Archive"

## Prefix
This script will rename files that begin with the first prefix substituting
for the second.

    $ ./prefix.sh "old_prefix" "new_prefix"

## Re7z
This script renames all of the files in the directory stripping out the 7z
part. Obviously, it should only be run on a directory that contains split 7zip
files.

    $ ./re7z.sh
