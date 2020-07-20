call plug#begin('~/.vim/plugged')

" sensible defaults
Plug 'tpope/vim-sensible'

" fuzzy finder
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.vim'

" can open files to a specific line with :<num>
Plug 'vim-scripts/file-line'

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'pmueller/vim-railscasts'

" status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" use sign column to show a diff
Plug 'mhinz/vim-signify'

Plug 'tpope/vim-surround'

" git wrapper
Plug 'tpope/vim-fugitive'

" for silver searcher
Plug 'rking/ag.vim'

" visualize undo tree
Plug 'mbbill/undotree'

" x of y matches while searching
Plug 'henrik/vim-indexed-search'

" syntax checking stuff
" switch to syntastic if using vim version < 8
"Plug 'scrooloose/syntastic'
Plug 'dense-analysis/ale'

Plug 'tpope/vim-repeat'

" highlight extra whitespace except in insert mode
Plug 'ntpeters/vim-better-whitespace'

" tabline has tab number and unsaved indicator
Plug 'mkitt/tabline.vim'

" syntax highlighting and more for most languages
Plug 'sheerun/vim-polyglot'

" html
Plug 'alvan/vim-closetag'

" ruby
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/rainbow-end'

" js
"Plug 'isRuslan/vim-es6'

call plug#end()
