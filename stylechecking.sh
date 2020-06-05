#!/bin/bash

# Disabled rules:
#
# SC2038 - in order to avoid non-alphanumeric filenames.
# SC2059 - in order to allow using variables in the printf format string.

# First, check if `shellcheck` is installed.
# Then, find all the executable files (omitting .git directory)
# and check them for tne styles (excluding disabled).

if [ "$(command -v shellcheck)" ];
then
    find . -type f -executable -not -path "./.git/*" | xargs -I{} shellcheck {} -e SC2038 -e SC2059;
else
    printf "Install shellcheck first.\\n";
    exit 1;
fi