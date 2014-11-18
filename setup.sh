#!/bin/bash

tracked_files=(.vimrc .zshrc .tmux.conf .bashrc)
untracked_files=(.zshrc_local .zshrc_private .bashrc_local .bashrc_private)
files=("${tracked_files[@]}" "${untracked_files[@]}")

for file in ${files[@]}; do
  if [ -f "$HOME/$file" ]; then
    echo "$file already exists, aborting..";
    exit 1;
  fi
done

if [ -d "${HOME}/.vim" ]; then 
  echo ".vim directory exists, aborting..";
fi

for file in ${tracked_files[@]}; do
  ln -s "$PWD/$file" "$HOME/$file"
done

for file in ${untracked_files[@]}; do
  touch "${HOME}/${file}"
done

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
