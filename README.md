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
1. Some note
2. Some note2
3. Some note3
4. Some note4
$ notebook -r 3
$ notebook
1. Some note
2. Some note2
3. Some note4
```

## Installation
The automated installation is possible for Debian and its derivatives, and also for Fedora.
In order to install, launch these commands:
### Debian
```bash
$ cd Debian
$ chmod +x install
$ ./install
```
### Fedora
```bash
$ cd Fedora
$ chmod +x install
$ ./install
```
