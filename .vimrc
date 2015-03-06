set tabstop=2
set shiftwidth=2
set expandtab

set nu

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

call pathogen#infect()
syntax on
filetype plugin indent on

" Stuff for solarized color scheme
syntax enable
set t_Co=256
"set background=dark
"colorscheme solarized
"color jellybeans
colors railscasts
