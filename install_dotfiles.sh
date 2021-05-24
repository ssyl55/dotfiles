#!/usr/bin/bash

# git configuration
mkdir -p ~/.config/git
cp git/config ~/.config/git/config

# nvim configuration
mkdir -p ~/.config/nvim
cp nvim/init.vim ~/.config/nvim/init.vim
mkdir -p ~/.config/nvim/colors
cp nvim/colors/molokai.vim ~/.config/nvim/colors/molokai.vim

## install vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

