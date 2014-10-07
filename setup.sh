#!/bin/bash

files=(.vimrc .zshrc .tmux.conf)

for file in ${files[@]}; do
  if [ -f "$HOME$file" ]; then
    echo "$file already exists, aborting..";
    exit 1;
  fi
done

if [ -d "${HOME}.vim" ]; then 
  echo ".vim directory exists, aborting..";
fi

for file in ${files[@]}; do
  ln -s $file "$HOME$file"
done

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
