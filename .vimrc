set tabstop=2
set shiftwidth=2
set expandtab
set nu
set backspace=indent,eol,start
set nocompatible

syntax enable

filetype plugin indent on

" disable ex mode
nnoremap Q <nop>

call pathogen#infect()

" for vim-cpp-enhanced-highlight plugin...
" turn on highlighting of class scope
let g:cpp_class_scope_highlight = 1

" color stuff
set t_Co=256
colors railscasts
" set the colorcolumn color in terminal mode
highlight ColorColumn ctermbg=745
" turn on a vertical bar on the 99th column
set colorcolumn=99
