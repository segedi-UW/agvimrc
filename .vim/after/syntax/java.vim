" Vim syntax file
" Language: Java
" Maintainer: Anthony Segedi
" Latest Revision: 26 April 2022
" Highlight classess (style is start as Capital letter)


syn match className "\v\s[A-Z]\w*|^[A-Z]\w*"
" func hilight regex is from vim-cpp-modern function highlight:
" See: https://github.com/bfrg/vim-cpp-modern/blob/master/after/syntax/c.vim
syn match func "\<\h\w*\>\(\s\|\n\)*("me=e-1 contains=cParen,cCppParen

hi def link className Structure
hi def link func Function
