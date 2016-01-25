# Utilities
Random helpful scripts.

## B27z
This script uploads a folder of 7zip volumes to Backblaze's B2 cloud service.
The [b2](https://github.com/Backblaze/B2_Command_Line_Tool) command line tool
and, obviously, a B2 account (currently in beta).

It uploads files into the following structure:

    s\
        something\
            something.001
            something.002
            something.002

You need to already have run the authorize\_account command and pass the
bucket name.

    $ ./b27z.sh "bucket_name"

## BW PDF
This script will convert a color PDF into a black and white PDF.

    $ ./bw-pdf.sh "input.pdf" "output.pdf"

## Enc7z
This script generates an encrypted 7z archive of a folder. It also encrypts
the filenames of the archive. It is intented for large files that are already
compressed and so it does no compression itself. It prompts for the number
of megabytes by which to split the archive, as well as the destination and
password.

    $ ./enc7z.sh "Folder To Archive"

## Find Md5
This script will search the current directory for directories containing an
md5sum file and then change into those directories and run the md5sum check.

    $ ./find-md5.sh

## Prefix
This script will rename files that begin with the first prefix substituting
for the second.

    $ ./prefix.sh "old_prefix" "new_prefix"

## Re7z
This script renames all of the files in the directory stripping out the 7z
part. Obviously, it should only be run on a directory that contains split 7zip
files.

    $ ./re7z.sh
