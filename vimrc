filetype on
set nocompatible

" vim-plug for plug-in management
source ~/.vim/autoload/plug.vim

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'                             " sensible defaults
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/file-line'                          " open files to a specific line with :<num>
Plug 'scrooloose/nerdtree'
Plug 'pmueller/vim-railscasts'
Plug 'mhinz/vim-signify'                              " sign column shows diff
Plug 'tpope/vim-fugitive'                             " git wrapper
Plug 'rking/ag.vim'
Plug 'mbbill/undotree'
Plug 'henrik/vim-indexed-search'                      " x of y matches while searching
Plug 'dense-analysis/ale'                             " syntax checking and other stuff
"Plug 'scrooloose/syntastic'                           " Use this over ALE if vim version < 8
Plug 'ntpeters/vim-better-whitespace'                 " highlight extra whitespace
Plug 'mkitt/tabline.vim'                              " show tab numbers and unsaved indicator
Plug 'sheerun/vim-polyglot'
Plug 'alvan/vim-closetag'                             " auto html end tags
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'vim-scripts/rainbow-end'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Keybindings
let mapleader = ","

command W w
cabbrev Q q

" more ergonomic mappings for esc
imap jj <esc>
imap jk <esc>
imap kj <esc>

" Remove ex mode shortcut
nnoremap Q <nop>

" map enter to write in normal mode
nmap <CR> :w<CR>

" Make Y consistent with D and C
map Y           y$

" Reload .vimrc
map <leader>rv  :source ~/.vimrc<CR>

" Auto-indent whole file
nmap <leader>=  gg=G``

" Jump to a new line in insert mode
imap <D-CR>     <Esc>o
imap <S-CR>     <Esc>o

" Fast scrolling
nnoremap <C-e>  3<C-e>
nnoremap <C-y>  3<C-y>

" File tree browser
map \           :NERDTreeToggle<CR>
" File tree browser showing current file
map \|          :NERDTreeFind<CR>

" Previous/next quickfix file listings (e.g. search results)
map <M-D-Down>  :cn<CR>
map <M-D-Up>    :cp<CR>
map <c-j>       :cn<CR>
map <c-k>       :cp<CR>

map <C-p>       :FZF<CR>

" ctags
map <leader>rt :!ctags -R --languages=ruby --exclude=.git --exclude=log .

" In command-line mode, <C-A> should go to the front of the line, as in bash.
cmap <C-A> <C-B>

" Copy current file path to system pasteboard
map <silent> <D-C> :let @* = expand("%")<CR>:echo "Copied: ".expand("%")<CR>
map <leader>C :let @* = expand("%").":".line(".")<CR>:echo "Copied: ".expand("%").":".line(".")<CR>

" Disable middle mouse button, F1
map <MiddleMouse>   <Nop>
imap <MiddleMouse>  <Nop>
map <F1>            <Nop>
imap <F1>           <Nop>

" grep current word
map <leader>a :call AgGrep()<CR>

" Undotree
map <leader>u :UndotreeToggle<CR>

" Format a json file with Python's built in json.tool.
" from https://github.com/spf13/spf13-vim/blob/3.0/.vimrc#L390
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>

" tab movement
nnoremap <C-h> gT
nnoremap <C-l> gt
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" turn on/off rainbowend
nnoremap <silent> <leader>b :call ToggleRainbow()<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - Color
set t_Co=256
colorscheme railscasts
syntax enable

" - Backups, Tmp Files, and Undo
set noswapfile
set nobackup
set directory=~/.vim/.tmp
" Persistent Undo
set undofile
set undodir=~/.vim/.undo

" - UI
" file name on left side, current row / max rows : current col on right side
" LineNr is the highlight group
set statusline=%#LineNr#\%f%=\ %#LineNr#\ %l\/%L:%c
set number                " Line numbers on
set laststatus=2          " Always show the statusline
set cmdheight=1           " Make the command area two lines high
set encoding=utf-8
if exists('+colorcolumn')
  highlight ColorColumn ctermbg=745
  set colorcolumn=99 " Color the 80th column differently as a wrapping guide.
endif
" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files
  set noballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" - Behaviors
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set autowrite          " Writes on make/shell commands
set timeoutlen=650     " Time to wait for a command (after leader for example).
set nofoldenable       " Disable folding entirely.
set foldlevelstart=99  " I really don't like folds.
set formatoptions=crql
set iskeyword+=\$,-    " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
set diffopt+=vertical  " Diff defaults to vertical window

" - Text Format
set tabstop=2
set backspace=2  " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set cindent
set autoindent
set smarttab
set expandtab

" - Searching
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch
set hlsearch
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
  \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc

" - Visual
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
set list        " Show invisible characters

set noicon

" Reset the listchars
set listchars=""
" a tab should display as "~"
set listchars=tab:\~\
" Show > in last col when wrap is off and line is past the screen to the right
set listchars+=extends:>
" and < to the left
set listchars+=precedes:<

" - Sounds
set noerrorbells
set novisualbell
set t_vb=

" - File Browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_winsize = 25    " 25% of screen
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" Better complete options to speed it up
set complete=.,w,b,u,U

" - Language specific
" Consider question/exclamation marks to be part of a Vim word.
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" - Options inspired by Pivotal's vim config
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set guicursor=a:blinkon0        " Turn off the blinking cursor

set wildignore+=tags               " Ignore tags when globbing.
set wildignore+=tmp             " ...Also tmp files.
set wildignore+=public/uploads  " ...Also uploads.
set wildignore+=public/images   " ...Also images.
set wildignore+=public/static   " ...Also node_modules.
set wildignore+=compiled        " ...Also compiled.
set wildignore+=node_modules    " ...Also node_modules.
set wildignore+=components      " ...Also components.
set wildignore+=.bundle         " ...Also .bundle.
" set wildignore+=vendor/**          " ...Also vendor.

set showmatch                   " Show matching brackets
set hidden                      " Allow hidden, unsaved buffers
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set cursorline                  " Highlight current line

set laststatus=2                " Always show statusline

set hls                         " search with highlights by default
" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" Write all writeable buffers when changing buffers or losing focus.
set autowriteall

" - Auto Commands
if has("autocmd")
  " No formatting on o key newlines
  autocmd BufNewFile,BufEnter * set formatoptions-=o

  " No more complaining about untitled documents
  autocmd FocusLost silent! :wa

  " When editing a file, always jump to the last cursor position.
  " This must be after the uncompress commands.
  autocmd BufReadPost *
        \ if line("'\"") > 1 && line ("'\"") <= line("$") |
        \   exe "normal! g`\"" |
        \ endif

  " Autowrite buffers when focus is lost"
  autocmd BufLeave,FocusLost * silent! wall

  " Earlier in the rc we mapped <CR> to write, which breaks the 'jump to
  " error' behavior in quickfix. So remap <CR> to <CR> in quickfix
  autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Find current word in command mode
function! AgGrep()
  let command = "ag ".expand("<cword>")
  cexpr system(command)
  cw
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" - NERDTree
let g:NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1

" - vim-ruby
" Turn on syntax highlighting for ruby operators (==, ||, &&, etc)
let ruby_operators=1

" - ag
let g:ag_prg="ag --path-to-ignore=~/.agignore --vimgrep"

" - FZF
" ag will filter, which will respect agignore
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

" - ALE
let g:ale_linters = {
\   'ruby': ['ruby'],
\}
