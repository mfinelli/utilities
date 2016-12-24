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

## Gzipped
This script is useful for ensuring that you server is configured correctly by
downloading a file twice. The first time it will not send any headers and then
the second time it will send gzip in the accept-encoding header to allow you
to compare the difference in download size.

    $ ./gzipped.sh http://www.example.com

## Prefix
This script will rename files that begin with the first prefix substituting
for the second.

    $ ./prefix.sh "old_prefix" "new_prefix"

## Re7z
This script renames all of the files in the directory stripping out the 7z
part. Obviously, it should only be run on a directory that contains split 7zip
files.

    $ ./re7z.sh

## S3
It is sometimes necessary to upload files to amazon's simple storage service
in a non-multipart manner. You can pass `--disable-multipart` to the
[s3cmd](http://s3tools.org/s3cmd) command, however it does not work very well
with larger files.

This script uploads files to an aws s3 bucket in a non-multipart manner using
the [awscli](https://github.com/aws/aws-cli)'s low-level s3api put-object
command. Obviously, you need to have the `awscli` installed and configured,
as well as having access to the bucket. You must also have `basename`,
`realpath`, and `file` in your path.

    $ ./s3.sh bucket path/to/file

## Shred Dir
This script will shred (and remove) every file in the directories matching
the pattern and then remove the directory. Use with caution as this is
obviously very dangerous.

    $ ./shred_dir.sh pattern
