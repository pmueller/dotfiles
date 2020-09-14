#!/bin/bash

# https://github.com/rxhanson/Rectangle is used for easy window management
brew cask install rectangle

# disable iterm2 only resizing to character width increments
defaults write com.googlecode.iterm2 DisableWindowSizeSnap -integer 1

# add a couple more pixels to the bottom of macvim so it takes up the full screen height
# when placed with Rectangle
defaults write org.vim.MacVim MMTextInsetBottom 3
