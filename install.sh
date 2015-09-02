#!/bin/bash

git submodule init
git pull --recurse-submodules
git submodule update --recursive

dir=`pwd`
files_to_link="bashrc gemrc gitconfig gitignore rspec tmux.conf vim vimrc zshenv zshrc"

for file in $files_to_link; do
  echo "Creating symlink from $dir/$file to ~/.$file in home directory."
  ln -s -f $dir/$file ~/.$file
done
