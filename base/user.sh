#!/bin/bash

set -ex

git clone --depth 1 https://github.com/hopkiw/dotfiles
cd dotfiles
for f in *; do mv $f ~/.$f; done
cd ..
rm -rf dotfiles
git clone https://github.com/tomasr/molokai
mkdir .vim
mv molokai/colors .vim/
rm -rf molokai
mkdir goroot
curl -s "https://dl.google.com/go/go1.18.3.linux-amd64.tar.gz" -o go.tar.gz
tar -C ~/goroot --strip-components=1 -xf go.tar.gz
rm go.tar.gz
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vi +PluginInstall +qall  >/dev/null </dev/null
vi +GoInstallBinaries +qall  >/dev/null </dev/null
