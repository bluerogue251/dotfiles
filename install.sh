#!/bin/bash

git submodule init
git pull --recurse-submodules
git submodule update --recursive

dir=`pwd`
files_to_link="bashrc gemrc gitconfig gitignore irbrc rspec tmux.conf vim vimrc zshenv zshrc"

for file in $files_to_link; do
  echo "Creating symlink from $dir/$file to ~/.$file in home directory."
  ln -s -f $dir/$file ~/.$file
done

echo "Symlinking vim and neovim config"
ln -s -f ~/.vim ~/.config/nvim
ln -s -f ~/.vimrc ~/.config/nvim/init.vim
