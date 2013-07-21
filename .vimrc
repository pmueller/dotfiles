set tabstop=2
set shiftwidth=2
set expandtab

set nu

call pathogen#infect()
syntax on
filetype plugin indent on

autocmd vimenter * NERDTree
autocmd vimenter * wincmd l
autocmd winenter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

" Stuff for solarized color scheme
syntax enable
set t_Co=256
"set background=dark
"colorscheme solarized
"color jellybeans
colors railscasts
