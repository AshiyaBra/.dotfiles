#!/bin/bash

# Check if operating system type is Linux
if [ "$(uname)" != "Linux" ]; then
  echo "Error: This script can only be run on Linux." >> linuxsetup.log
  exit 1
fi

# Create .TRASH directory in the home directory
mkdir -p ~/".TRASH" >> linuxsetup.log

# Rename .vimrc file to .bup vimrc 
if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.bup\ vimrc >> linuxsetup.log
  echo "Current .vimrc file was changed to '.bup vimrc'" >> linuxsetup.log
fi

# Redirect contents of etc/vimrc file to .vimrc
sudo cat /etc/vimrc > ~/.vimrc

# Add 'source ~/.dotfiles/etc/bashrc custom' to end of .bashrc file
echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc

