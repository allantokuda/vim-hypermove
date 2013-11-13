vim-hypermove
=============

Rename a listing of files as if it were a file.

## Installation
* Install Pathogen
* Clone into your `.vim/bundle` directory.

## Use
* Open vim from a UNIX-like terminal (with the `mv` command), `cd` to a directory containing files to be renamed. OR use Vim's `cd` command to change to the desired directory.
* Run `:Hypermove`
* The buffer now contains a list of files. Edit the ones on the right however you like.
* Press `<F6>`. The files will be instantly renamed.
* If the files change for other reasons (such as changing the current directory, or other applications affecting the files), press `<F5>` to refresh.

# Limitations
* Does not handle files with spaces
* No recursive option yet
* Not cross platform
