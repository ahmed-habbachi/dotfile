" set compatibility to vim only
set nocompatible

set mouse=a
set clipboard+=unnamedplus
syntax on

" show line numbers
set number

" show relative number
set relativenumber

" show status bar on the bottom
set laststatus=2

" Display options
set showmode
set showcmd

set backspace=2

" highlight current line"
set cursorline
:highlight Cursorline cterm=bold ctermbg=236

" enable highlight search pattern"
set hlsearch

" enable smartcase search sensitivity"
set ignorecase
set smartcase

" Indentation using spaces"
" tabstop:		width of tab character"
" softtabstop:	fine tunes the amount of whitespace to be added
" shiftwidth:	determines the amount of whitespace to add in normal mode
" expandtab:	when on use space instead of tab
" textwidth:	text wrap width
" autoindent:	autoindent in new line
set tabstop 	=4
set softtabstop	=4
set shiftwidth	=4
set textwidth	=79
set expandtab
set autoindent

" show the marching part of pairs {} [] and ()"
set showmatch
set matchpairs+=<:>

" remove trailing whitespace from .py .ts .js .json .cs .html .css files"
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.ts :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.json :%s/\s\+$//e
autocmd BufWritePre *.cs :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.css :%s/\s\+$//e

" enable color themes"
if !has('gui_running')
    set t_Co=256
endif

" enable true colors support"
set termguicolors

" Vim colorscheme"
" colorscheme desert

" enable autocomplete
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Call the .vimrc.plug file
if filereadable(expand("~/.config/.vimrc.plug"))
    source ~/.config/.vimrc.plug
endif

" Call the .vimrc.map file
if filereadable(expand("~/.config/.vimrc.map"))
    source ~/.config/.vimrc.map
endif

set tags+=tags;$HOME
