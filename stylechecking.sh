#!/bin/bash

if [ "$(command -v shellcheck)" ];
then
    find . -type f -executable ! -name '*.sample' | xargs -I{} shellcheck {} -e SC2038 -e SC2059;
else
    printf "Install shellcheck first.\\n";
fi