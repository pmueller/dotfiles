set tabstop=2
set shiftwidth=2
set expandtab
set nu
set backspace=indent,eol,start
set nocompatible

syntax enable

" vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/file-line'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'jgdavey/vim-railscasts'

call vundle#end()
filetype plugin indent on
" end vundle stuff

" disable ex mode
nnoremap Q <nop>

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
