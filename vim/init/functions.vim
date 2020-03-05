" ----------------------------------------
" Functions
" ----------------------------------------

" ---------------
" Write Buffer
"
" Writes the current buffer unless we're the in QuickFix mode.
" ---------------

function WriteBuffer()
  " qf is quickfix
  if &filetype == "qf"
    execute "normal! \<enter>"
  else
    :write
  endif
endfunction
noremap <silent> <enter> :call WriteBuffer()<CR>

" Find current word in command mode
function! AgGrep()
  let command = "ag ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

function! AgVisual()
  normal gv"xy
  let command = "ag ".@x
  cexpr system(command)
  cw
endfunction
