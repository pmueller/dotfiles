#!/bin/bash

dotfiles=( agignore gemrc gitconfig gitignore gituserconfig irbrc screenrc tmux.conf vimrc )
source="$( cd "$(dirname "$0")" ; pwd -P )"

echo "symlinking ~/.vim/ -> ${source}/vim/"

rm -rf ~/.vim
ln -s "${source}/vim" ~/.vim

cd ~
for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "symlinking ~/.${dotfile} -> ${source}/${dotfile}"
  ln -s "${source}/${dotfile}" ".${dotfile}"
done
