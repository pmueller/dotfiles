#!/bin/bash

dotfiles=( agignore aliases bash_profile bash_prompt gemrc gitconfig gitignore gituserconfig irbrc screenrc tmux.conf vimrc )
source="$( cd "$(dirname "$0")" ; pwd -P )"

echo "symlinking ~/.vim/ -> ${source}/vim/"
rm -rf ~/.vim
ln -s "${source}/vim" ~/.vim

echo "symlinking ~/.config/nvim/init.vim -> ${source}/vim/nvim/init.vim"
rm -rf ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/
ln -s "${source}/vim/nvim/init.vim" ~/.config/nvim/init.vim

cd ~
for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "symlinking ~/.${dotfile} -> ${source}/${dotfile}"
  ln -s "${source}/${dotfile}" ".${dotfile}"
done
