#!/usr/bin/bash

mkdir -p ~/.vim/bundle/
cd ~/.vim/bundle

git clone https://github.com/VundleVim/Vundle.vim
git clone https://github.com/dmpas/vimrc.git

cd ~
echo "source .vim/bundle/vimrc/vimrc.vim" > .vimrc

