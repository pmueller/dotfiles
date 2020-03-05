#!/bin/bash

source="$( cd "$(dirname "$0")" ; pwd -P )"
cd ~
rm -f ".vimrc"
echo "symlinking ~/.vimrc -> ${source}/minimal_vimrc"
ln -s "${source}/minimal_vimrc" ".vimrc"
