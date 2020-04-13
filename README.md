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
Also this script can:
* Clear all the notes at once
* Make backup and restore
* Make you mad after discovering... Easter Egg)

## Installation
The automated installation is possible for Debian and its derivatives, and also for Fedora.
### Debian
No addition package is required. Just launch these commands in the terminal:
```bash
$ cd Debian
$ chmod +x install
$ ./install
```
### Fedora
The necessary package is `rpm-build`. If you have installed it, launch these commands:
```bash
$ cd Fedora
$ chmod +x install
$ ./install
```
