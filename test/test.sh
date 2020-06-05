#!/bin/bash

# Common phrases

pass='\e[32m\e[1mPassed.\e[0m\n';
fail='\e[31m\e[1mFailed.\e[0m\n';

# Prompt to confirm

printf "The saved files WILL BE DELETED.\\n";
printf "I will recommend you to copy them to another folder.\\n";
read -p "Are you ready to proceed? [Y/n] " -r;

# Differing with template

test_num=;

differ()
{
    if [ -z "$(diff $test_num ~/.notebook_files/local_notes)" ];
    then
        printf "$pass";
    else
        printf "$fail";
        exit 1;
    fi
}

# Tests

printf "\\e[1m0. Uninstalling the files.\\e[0m\\n";
#yes | ../src/notebook --uninstall;
rm -r ~/.notebook_files;
if ! [[ -d ~/.notebook_files ]]
then
    printf "$pass";
else
    printf "$fail";
    exit 1;
fi


printf "\\e[1m1. Adding the coloured note.\\e[0m\\n";
../src/notebook -a 'Test for adding the note' -p green;
test_num='test_1';
differ;


printf "\\e[1m2. Adding multiple notes.\\e[0m\\n";
for ((i=0; i < 5; i++));
do
    ../src/notebook -a "$i note";
done
test_num='test_2';
differ;


printf "\\e[1m3. Removing one line.\\e[0m\\n";
../src/notebook -r 3;
test_num='test_3';
differ;


printf "\\e[1m4. Removing several lines.\\e[0m\\n";
../src/notebook -r 2 4;
test_num='test_4';
differ;


printf "\\e[1m5. Editing the note.\\e[0m\\n";
../src/notebook -e 2 'Marcus';
test_num='test_5';
differ;

