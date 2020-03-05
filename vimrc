filetype on
set nocompatible

" Use vim-plug for plug-in management
source ~/.vim/autoload/plug.vim
source ~/.vim/vimplug.vim

" Source initialization files
for file in split(glob('~/.vim/init/*.vim'), '\n')
  exec 'source' file
endfor
