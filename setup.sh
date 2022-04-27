#!/bin/bash
# symbolically link vim directories so they are were vim expects them to be
#      target : dest
ln -s .vimrc ../.vimrc
ln -s .vim ../.vim
# install all the git submodules (plugins). Alternatively install the ones you want individually (see GitHub)
git submodule update --init
