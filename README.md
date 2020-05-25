# notebook-linux
Simple script that allows to make notes inside terminal.

## Usage
In order to add some note, write:
```bash
$ notebook -a 'Some note'
```
The result is:
```
1. Some note
```
If you want to add some color, use -p, like this:
```bash
$ notebook -a 'Some note, but colored' -p 'green'
```
In order to delete the line, use -r:
```bash
$ notebook
1. one
2. two
3. three
4. four
5. five
6. six
$ notebook -r 3
$ notebook
1. one
2. two
3. four
4. five
5. six
$ notebook -r 2 4
$ notebook
1. one
2. six
```
To edit the line, use -e:
```bash
$ notebook
1. Some note
2. Some note 2
3. Test note
4. Some note 4
$ notebook -e 3 'New note'
$ notebook
1. Some note
2. Some note 2
3. New note
4. Some note 4
```
Also this script can:
* Clear all the notes at once
* Make backup and restore
* Schedule loading for later, using `at` utility format
* Make you mad after discovering... Easter Egg)

## Installation
The automated installation is possible for Debian and its derivatives, and also for Fedora.

`notebook` depends on `at`, which is resolved in every `install` script.
### Debian
No addition package is required. Just launch these commands in the terminal:
```bash
$ cd Debian
$ chmod +x install
$ ./install
```
### Fedora
The necessary package is `rpmdevtools`. If you have not installed it, the script will install 
it automatically.

There are similar installation commands:
```bash
$ cd Fedora
$ chmod +x install
$ ./install
```
### Other Linux-based OS
Just place the `notebook` script in the /usr/bin directory (or /usr/local/bin).

In order to uninstall, delete it. Remember doing it under the root.
