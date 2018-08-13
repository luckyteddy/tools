#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle;
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle/

# generic
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/scrooloose/nerdtree
git clone https://github.com/ronakg/quickr-cscope.vim
git clone https://github.com/ervandew/supertab
git clone https://github.com/vim-scripts/taglist.vim
git clone https://github.com/tpope/vim-fugitive
git clone https://github.com/Rip-Rip/clang_complete.git

# python
git clone --recursive https://github.com/python-mode/python-mode
git clone --recursive https://github.com/davidhalter/jedi-vim.git

