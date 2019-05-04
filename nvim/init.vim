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

" Save
noremap <Leader>w :w<CR>
noremap <Leader>q <C-W><C-C>

" No highlight
nnoremap <C-C> :nohlsearch<CR><C-C>

" Source vimrc
nnoremap <Leader>s :so<space>$MYVIMRC<CR>

" edit vimrc
nnoremap <Leader>e :e<space>$MYVIMRC<CR>

" ----------*---------- ----------*---------- ----------*---------- "

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'iCyMind/NeoSolarized'

  Plug 'scrooloose/nerdcommenter'
  Plug 'google/vim-searchindex'
  Plug 'scrooloose/nerdtree'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-surround'

  Plug 'leafgarland/typescript-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
  Plug 'Quramy/tsuquyomi'
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
call plug#end()

set termguicolors
colorscheme NeoSolarized
set background=light

" fzf
nmap <Leader>r :Buffers<CR>
nmap <C-P> :GFiles<CR>
nmap <C-G> :Rg<CR>
"nmap <Leader>t :Tags<CR>


" Delete buffer without cloing window
nnoremap <Leader>c :bp\|bd #<CR>

" Prettier
" single quotes over double quotes
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" NerdCommenter
let g:NERDDefaultAlign = 'left'

" GitGutter
let g:gitgutter_override_sign_column_highlight = 0

set backupdir=~/tmp
set directory=~/tmp
set undodir=~/tmp

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"
