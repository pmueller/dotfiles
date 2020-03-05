#!/bin/bash

dotfiles=( agignore gemrc gitconfig gitignore gituserconfig irbrc screenrc tmux.conf )
source="$( cd "$(dirname "$0")" ; pwd -P )"

cd ~
for dotfile in "${dotfiles[@]}"; do
  rm -f ".${dotfile}"
  echo "symlinking ~/.${dotfile} -> ${source}/${dotfile}"
  ln -s "${source}/${dotfile}" ".${dotfile}"
done
