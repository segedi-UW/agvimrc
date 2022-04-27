" Vim syntax file
" Language: Java
" Maintainer: Anthony Segedi
" Latest Revision: 26 April 2022
" Highlight classess (style is start as Capital letter)

if exists("b:current_syntax")
	finish
endif

syn match className '[A-Z].*'

hi def link className Type
