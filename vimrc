syntax on

set backspace=indent,eol,start
let mapleader = ' '

filetype plugin indent on

" Show line number
set number
set relativenumber

" Tab
set tabstop=2
set shiftwidth=2
set expandtab

" GVIM
set guioptions-=m  "remove menu bar
set guioptions-=T  "toolbar

" Visuals
colorscheme one
set encoding=utf-8
set t_CO=256

" Set font
set guifont=Fira_Code:h11

" Search
set hlsearch
set incsearch

" Save
noremap <Leader>w :w<CR>
