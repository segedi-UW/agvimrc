" Anthony Segedi 
" aj.segedi@gmail.com 
" https://www.ajseg.com 
" vimrc config for my needs.

let mapleader=","

" @<word>@ is not required. However @ needs to be matched
" I use it for uniqueness
iabbrev @name@ Anthony Segedi
iabbrev @pemail@ aj.segedi@gmail.com
iabbrev @wemail@ segedi@wisc.edu
iabbrev @web@ https://www.ajseg.com

nnoremap H I<esc>
nnoremap L A<esc>

" Surround in double quotes
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" Single quotes
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel

" more info at :help myvimrc
" Learning from learn vimscript the hard way - highly recommend
" https://learnvimscriptthehardway.stevelosh.com/

" Edit and source maps
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap - Vdp
nnoremap _ VdkP

inoremap <c-d> <esc>ddi
" ctrl-u & ctrl-l (-> word toLower, word toUpper)
inoremap <c-u> <esc>lviwUi
inoremap <c-l> <esc>lviwui
inoremap jk <esc>

nnoremap <leader>sw :execute 'leftabove split ' . bufname("#") <cr>

" grep note that <cword> greps like w matches words, cWORD does it like W
nnoremap <leader>g :silent execute "grep! -R " . shellescape(expand('<cWORD>')) . " ."<cr>:copen 8<cr>

" tmp remap esc to learn jk
inoremap <esc> <nop>
" Enter the very magic regex parsing mode by default
nnoremap / /\v

" filetype specific comments
augroup filetype_comments
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
	autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType java nnoremap <buffer> <localleader>c I//<esc>
	autocmd FileType c nnoremap <buffer> <localleader>c I//<esc>
augroup END

" filetype specific templates
augroup java_templates
	autocmd!
	autocmd FileType java :iabbrev <buffer> sout System.out.println("");
	autocmd FileType java :iabbrev <buffer> soutf System.out.printf("");
	autocmd FileType java :iabbrev <buffer> serr System.err.println("");
	autocmd FileType java :iabbrev <buffer> serrf System.err.printf("");
	autocmd FileType java :iabbrev <buffer> psvm public static void main(String[] args) {<cr><cr>return;}<up><up><tab>
augroup END



" got most from here: https://www.freecodecamp.org/news/vimrc-configuration-guide-customize-your-vim-editor/
" Feel free to use this, also has some of my own additions
"
" Unsets the last search pattern register by hitting return
nnoremap <CR> :noh<CR>

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" This disables auto-newline at a certain column. I personally find it annoying
set textwidth=0

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" relative numbering with 0 replaced with the actual ln #
" width of number col
set number relativenumber numberwidth=3
" syntax highlighting
syntax on
" highlight col
"set cursorcolumn
" highlight line
set cursorline
" Set shift width to 4 spaces.
" Set tab width to 4 columns.
set shiftwidth=4 tabstop=4

" Use space characters instead of tabs. Note that this breaks Makefile edits!!
" I keep this disabled
"set expandtab 

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
"set history=1000 " I don't feel the need to increase this

" Enable auto completion menu after pressing TAB
set wildmenu

" Make wildmenu behave like Bash completion
set wildmode=list:longest

" Wildmenu will ignore files with these ext
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx,*.class

"********* NOTE That everything past this requires further downloads *******
colorscheme molokai

" If you want a non-transparent bg, comment this out
hi Normal guibg=NONE ctermbg=NONE

" *********** NERDCOMMENT PLUGIN ************
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


" *********** enhanced C highlighting (and c++) ****************
" Disable function highlighting (affects both C and C++ files)
let g:cpp_function_highlight = 1

" Enable highlighting of C++11 attributes
let g:cpp_attributes_highlight = 1

" Highlight struct/class member variables (affects both C and C++ files)
let g:cpp_member_highlight = 1

" Put all standard C and C++ keywords under Vim's highlight group 'Statement'
" (affects both C and C++ files)
let g:cpp_simple_highlight = 1"


"***************** lightline *************
set laststatus=2
"let g:lightline = {
			"\ 'colorscheme': 'molokai',
			"\ }

" **************** NERDCommenter *************

nnoremap <leader>n :NERDTreeToggle<CR>

let g:NERDCreateDefaultMappings=1

" Add spaces after comment delims by default
let g:NERDSpaceDelims=1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs=1

" Allow commenting and inverting empty lines
let g:NERDCommentEmptyLines=1

" Enable NERDCommenterToggle to check all selected lines are commented or not
let g:NERDToggleCheckAllLines=1

noh
