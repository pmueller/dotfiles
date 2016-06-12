#!/bin/bash

dotfiles=( agignore gemrc gitconfig gitignore gituserconfig irbrc screenrc tmux.conf vimrc )
source=$1

if [ -z "$source" ]; then
  echo "Must pass the directory where the dotfiles live"
  exit 1
fi

for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "${dotfile}"
  ln -s "${source}/${dotfile}" ".${dotfile}"
done
