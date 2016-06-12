#!/bin/bash

dotfiles=( ackrc agignore gemrc gitconfig gitignore irbrc )
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
