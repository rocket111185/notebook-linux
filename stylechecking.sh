#!/bin/bash

# Disabled rules:
#
# SC2038 - in order to avoid non-alphanumeric filenames.
# SC2059 - in order to allow using variables in the printf format string.


if [ "$(command -v shellcheck)" ];
then
    find . -type f -executable ! -name '*.sample' | xargs -I{} shellcheck {} -e SC2038 -e SC2059;
else
    printf "Install shellcheck first.\\n";
fi