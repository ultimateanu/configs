" Anu Custom VIM RC

syntax on
set nocompatible
set background=dark
set autoindent
set smartindent
set number
set ignorecase
set shiftwidth=2

" Auto convert tabs to spaces
set expandtab
set tabstop=2

" Set proper syntax
au BufRead,BufNewFile *.proto set filetype=proto
au BufRead,BufNewFile *.go set filetype=go

" Share clipboard with os
set clipboard=unnamedplus
