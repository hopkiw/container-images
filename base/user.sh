#!/bin/bash

set -x

git clone --depth 1 https://github.com/hopkiw/dotfiles
cd dotfiles
for f in *; do mv $f ~/.$f; done
cd ..
rm -rf dotfiles
git clone https://github.com/tomasr/molokai
mkdir .vim
mv molokai/colors .vim/
rm -rf molokai
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vi +PluginInstall +qall  >/dev/null </dev/null
