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

" Visuals
set encoding=utf-8
set t_CO=256

" Set font
set guifont=Fira_Code:h11

" Search
set hlsearch
set incsearch

" Save
noremap <Leader>w :w<CR>

" ----------*---------- ----------*---------- ----------*---------- "

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme onedark

" ----------*---------- ----------*---------- ----------*---------- "

" NerdTree
map <C-n> :NERDTreeToggle<CR>

" ----------*---------- ----------*---------- ----------*---------- "

" GVIM
set guioptions-=m  "remove menu bar
set guioptions-=T  "toolbar
set guioptions-=L  "remove left-hand scroll bar
set guioptions-=r  "remove left-hand scroll bar

" Default to system clipboard
set clipboard=unnamed

" ----------*---------- ----------*---------- ----------*---------- "

" CtrlP
let g:ctrlp_map = '<C-p>' 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ----------*---------- ----------*---------- ----------*---------- "

