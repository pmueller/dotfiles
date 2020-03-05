call plug#begin('~/.vim/plugged')

" sensible defaults
Plug 'tpope/vim-sensible'
" fuzzy finder
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.vim'
" can open files to a specific line with :<num>
Plug 'vim-scripts/file-line'

Plug 'scrooloose/nerdtree'
Plug 'jgdavey/vim-railscasts'
" status line
Plug 'vim-airline/vim-airline'
" use sign column to show a diff
Plug 'mhinz/vim-signify'

Plug 'scrooloose/nerdcommenter'
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
"Plug 'ervandew/supertab'
" add 'end' for ruby stuff
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'

" highlight extra whitespace except in insert mode
Plug 'ntpeters/vim-better-whitespace'

" tabline has tab number and unsaved indicator
Plug 'mkitt/tabline.vim'

Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/rainbow-end'
" also includes sass and scss
Plug 'tpope/vim-haml'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'

Plug 'pangloss/vim-javascript'
"Plug 'isRuslan/vim-es6'
"Plug 'leafgarland/typescript-vim'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'kchmck/vim-coffee-script'
Plug 'leshill/vim-json'
"Plug 'briancollins/vim-jst'
"Plug 'posva/vim-vue'

Plug 'othree/html5.vim'

Plug 'elixir-lang/vim-elixir'

Plug 'fatih/vim-go'

Plug 'sheerun/vim-polyglot'

call plug#end()
