#!/bin/bash

# Usage: ./s3.sh bucket path/to/file

# This script uploads files to amazon simple storge service in the
# non-multipart manner using the awscli program and the low-level
# s3api put-object.

aws s3api put-object --bucket "$1" \
    --key "$(basename "$2")" \
    --body "$(realpath "$2")" \
    --content-type "$(file --mime-type -b "$(realpath "$2")")" \
    --acl private --server-side-encryption AES256
