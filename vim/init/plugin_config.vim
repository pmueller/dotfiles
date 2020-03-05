" ----------------------------------------
" Plugin Configuration
" ----------------------------------------

" ---------------
" NERDTree
" ---------------
let g:NERDTreeShowBookmarks=0
let g:NERDTreeChDirMode=2 " Change the NERDTree directory to the root node
let g:NERDTreeMinimalUI=1
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType")
  "\&& b:NERDTreeType == "primary") | q | endif

" ---------------
" surround.vim
" ---------------
" Use # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" Thanks to http://git.io/_XqKzQ
let g:surround_35  = "#{\r}"

" ---------------
" vim-signify
" ---------------
let g:signify_mapping_next_hunk="<leader>sn"
let g:signify_mapping_prev_hunk="<leader>sp"
let g:signify_mapping_toggle_highlight="<nop>"
let g:signify_mapping_toggle="<nop>"

" ---------
" vim-ruby
" ---------
" Turn on syntax highlighting for ruby operators (==, ||, &&, etc)
let ruby_operators=1

" ---------
" ag
" ---------
let g:ag_prg="ag --path-to-ignore=~/.agignore --vimgrep"

" ---------
" FZF
" ---------
" ag will filter, which will respect agignore
let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'


" ---------
" Fugitive
" ---------
" Unset 'list' in :Gstatus window (which usually contains tab characters).
autocmd BufReadPost .git/index set nolist
