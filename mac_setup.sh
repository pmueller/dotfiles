#!/bin/bash

# https://github.com/rxhanson/Rectangle is used for easy window management
brew cask install rectangle
brew install rectangle
brew install iterm2
brew install tmux

# disable iterm2 only resizing to character width increments
defaults write com.googlecode.iterm2 DisableWindowSizeSnap -integer 1

# change the default scroll direction to the 'old' style
defaults write -g com.apple.swipescrolldirection -bool FALSE

# add a couple more pixels to the bottom of macvim so it takes up the full screen height
# when placed with Rectangle
defaults write org.vim.MacVim MMTextInsetBottom 3

# install oh my zsh
