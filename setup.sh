#!/bin/bash
# symbolically link vim directories so they are were vim expects them to be
#      target : dest
ln -sr .vimrc ..
ln -sr .vim ..
ln -sr ./.vim/colorschemes/colors ../.vim/colors
# install all the git submodules (plugins). Alternatively install the ones you want individually (see GitHub)
git submodule update --init
