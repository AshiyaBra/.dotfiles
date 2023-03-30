#!/bin/bash



# Remove .vimrc file in home directory
if [ -f ~/.vimrc ]; then
  rm ~/.vimrc
fi

# Remove 'source ~/.dotfiles/etc/bashrc custom' line from .bashrc file 
sed -i '/source ~\/.dotfiles\/etc\/bashrc custom/d' ~/.bashrc

# Remove .TRASH directory in home directory
if [ -d ~/".TRASH" ]; then
  rm -r ~/".TRASH"
fi

