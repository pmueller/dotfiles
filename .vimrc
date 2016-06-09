set tabstop=2
set shiftwidth=2
set expandtab
set nu
set backspace=indent,eol,start
set nocompatible
set hlsearch

syntax enable

" vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'vim-scripts/file-line'
Plugin 'mhinz/vim-signify'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-rails'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'othree/html5.vim'
Plugin 'jgdavey/vim-railscasts'
Plugin 'vim-airline/vim-airline'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Bundle 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'sjl/gundo.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/L9'

call vundle#end()
filetype plugin indent on
" end vundle stuff

set laststatus=2
nnoremap <F5> :GundoToggle<CR>

" File tree browser
map \           :NERDTreeToggle<CR>
"
" " File tree browser showing current file - pipe (shift-backslash)
map \|          :NERDTreeFind<CR>

let mapleader = ","
map <leader>b :FufBuffer<CR>

" disable ex mode
nnoremap Q <nop>

" for vim-cpp-enhanced-highlight plugin...
" turn on highlighting of class scope
let g:cpp_class_scope_highlight = 1

" lets gistvim put the gist url into the clipboard with -c
let g:gist_clip_command = 'pbcopy'

" color stuff
set t_Co=256
colors railscasts
" set the colorcolumn color in terminal mode
highlight ColorColumn ctermbg=745
" turn on a vertical bar on the 99th column
set colorcolumn=99
