set nocompatible

let mapleader = ' '

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
set ignorecase
set smartcase

" ReaLoad a file if was changed outside of Vim
set autoread

noremap <Leader>w :w<CR>
noremap <Leader>q <C-W><C-C>
noremap <Leader>l :set cursorcolumn!<CR>

" No highlight
nnoremap <C-C> :nohl<CR><C-C>

" Source vimrc
nnoremap <Leader>s :so<space>$MYVIMRC<CR>

" edit vimrc
nnoremap <Leader>e :e<space>$MYVIMRC<CR>

set nofixendofline

set hidden

set diffopt=vertical

set updatetime=100

" ----------*---------- ----------*---------- ----------*---------- "

call plug#begin('~/.vim/plugged')
  Plug 'altercation/vim-colors-solarized'
  Plug 'miyakogi/conoline.vim'

  Plug 'scrooloose/nerdcommenter'
  Plug 'google/vim-searchindex'
  Plug 'scrooloose/nerdtree'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-surround'
  Plug 'Raimondi/delimitMate'

  " JavaScript/TypeScript
  Plug 'leafgarland/typescript-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

  Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}
call plug#end()

set background=light
colorscheme solarized

" fzf
nmap <Leader>b :Buffers<CR>
nmap <C-P> :GFiles<CR>
nmap <Leader>m :Commands<CR>

" Delete buffer without cloing window
nnoremap <Leader>c :bp\|bd #<CR>

" Prettier
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'

" NerdCommenter
let g:NERDDefaultAlign = 'left'
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv

" GitGutter
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_map_keys = 0

" NerdTree
nmap <Leader>n :NERDTree
nmap <Leader>nf :NERDTreeFind<CR>
nmap <Leader>nc :NERDTreeClose<CR>
nmap <Leader>nv :NERDTreeVCS<CR>

set backupdir=~/tmp
set directory=~/tmp
set undodir=~/tmp

" Fugitive
nmap <Leader>gb :Gblame<CR>

" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> dp <Plug>(coc-diagnostic-prev)
nmap <silent> dn <Plug>(coc-diagnostic-next)
nmap <leader>rn <Plug>(coc-rename)

" Cursor Line
let g:conoline_auto_enable = 1

" Cursor shape
let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

" Neovim terminal
au TermOpen * setlocal nonumber norelativenumber
tnoremap <Esc> <C-\><C-n>
