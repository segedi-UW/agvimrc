# symbolically link vim directories so they are were vim expects them to be
#      target : dest
New-Item -Path ..\vimfiles -ItemType SymbolicLink -Value .\.vim
New-Item -Path ..\_vimrc -ItemType SymbolicLink -Value .\.vimrc
New-Item -Path .\.vim\colors -ItemType SymbolicLink -Value .\.vim\colorschemes\colors
# install all the git submodules (plugins). Alternatively install the ones you want individually (see GitHub)
git submodule update --init
