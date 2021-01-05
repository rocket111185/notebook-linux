# notebook-linux
Simple script that allows to make notes inside terminal.

## Usage
In order to add a note, write:
```bash
$ notebook -a 'A note'
```
The result is:
```
1. A note
```
If you want to color your note, use -p, like this:
```bash
$ notebook -a 'Another note, but colored' -p 'green'
```
In order to delete the note (or some of them), use -r:
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
To edit the note, use -e:
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

`notebook` depends on scheduling utility `at`, but if you won't use the
scheduling, you can install the `notebook` without `at`.

In the case of automatic installation `at` is required and checked dependency.

### Debian and derivatives (Ubuntu, Mint, PopOS!, etc.)
Launch these commands in the terminal:
```bash
$ cd Debian
$ chmod +x install
$ ./install
```
### Fedora
Installation script relies on `rpmdevtools`. If you have not installed it, the script will install 
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
