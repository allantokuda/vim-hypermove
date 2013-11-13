vim-hypermove
=============

Rename a listing of files as if it were a file.

## Installation
* Install Pathogen
* Clone into your `.vim/bundle` directory.

## Use
* Open vim from a UNIX-like terminal (with the `mv` command), `cd` to a directory containing files to be renamed. OR use Vim's `cd` command to change to the desired directory.
* Run `:Hypermove`
* The buffer now contains a list of move commands. Edit the ones on the right however you like.
* Press `<F6>`. The files will be instantly renamed.
* If the files change for other reasons (such as changing the current directory, or other applications affecting the files), press `<F5>` to refresh.

# Limitations
* No handling of files with spaces
* No checking for duplicates on the right-hand side (which causes lost files)
* No checking for non-existent files on the left-hand side
* No recursive option yet
* Cannot move to a folder that doesn't exist
* Does not remember and restore the cursor's line number after a rename
* Not cross platform
