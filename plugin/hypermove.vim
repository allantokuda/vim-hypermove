function! LoadFileList()
  " Big tab stop. Allow inserting tabs.
  set ts=60
  set noexpandtab
  setf sh

  " clear the entire file
  %d

  " Read the results of "ls" into the file
  r!ls

  " Delete (blank) line 1
  1d

  " Add a tab at end of every line
  %norm A	-
  " Hack: add extra - and then delete it again because my vim is set to delete
  " trailing whitespace in files I create, so I can't have a tab at the end of
  " that script line above
  %norm $x

  " copy the filename to the end of every line
  %norm vt	y$p

  " Add "mv " to the beginning of every line
  %norm imv -
  %norm f-x

  " Add helper
  1norm O# Press <F5> to refresh, <F6> to execute
endfunction

function! Hypermove()
  if bufname("%") != ""
    enew
  endif
  nnoremap <F5> :call LoadFileList()<CR>
  nnoremap <F6> :w !sh<CR><CR>:call LoadFileList()<CR>
  call LoadFileList()
  syn match Error /.*\t\(.*\)$\n.*\t\1$/
endfunction

command! Hypermove execute "call Hypermove()"
