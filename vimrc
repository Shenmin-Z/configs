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

" Search
set hlsearch
set incsearch

" ReaLoad a file if was changed outside of Vim
set autoread

" Save
noremap <Leader>w :w<CR>
if exists(':YcmCompleter')
  noremap <Leader>w :YcmCompleter Format<CR>:w<CR>
endif

" No highlight
nnoremap <C-C> :nohlsearch<CR><C-C>

" ----------*---------- ----------*---------- ----------*---------- "

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'joshdick/onedark.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ----------*---------- ----------*---------- ----------*---------- "

" NerdTree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

" ----------*---------- ----------*---------- ----------*---------- "

" CtrlP
let g:ctrlp_map = '<C-p>' 
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" ----------*---------- ----------*---------- ----------*---------- "

" Ycm
map <C-]> :YcmCompleter GoTo<CR>
let g:ycm_autoclose_preview_window_after_completion = 1

" fzf
nmap <Leader>e :Buffers<CR>
nmap <Leader>r :Files<CR>
nmap <Leader>t :Tags<CR>

" emmet
" let g:user_emmet_expandabbr_key='<Tab>'
" imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
