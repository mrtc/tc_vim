function! s:DiffWithSaved()
  let filetype=&ft
  diffthis
  vnew | r # | normal! 1Gdd
  diffthis
  exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

if has("autocmd")
  " ROS .launch files are xml
  augroup module
    autocmd BufRead,BufNewFile *.launch set filetype=xml
  augroup END
endif
syntax on

    
