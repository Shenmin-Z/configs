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
set ignorecase
set smartcase

" ReaLoad a file if was changed outside of Vim
set autoread

" Save
noremap <Leader>w :w<CR>

" No highlight
nnoremap <C-C> :nohlsearch<CR><C-C>

" Source vimrc
nnoremap <Leader>s :so<space>$MYVIMRC<CR>

" edit vimrc
nnoremap <Leader>e :e<space>$MYVIMRC<CR>

" ----------*---------- ----------*---------- ----------*---------- "

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'google/vim-searchindex'
Plug 'mileszs/ack.vim'

if has('win32')
  Plug 'joshdick/onedark.vim'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'Quramy/tsuquyomi'
endif

if has('unix')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'
endif

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" ----------*---------- ----------*---------- ----------*---------- "

" NerdTree
map <C-n> :NERDTreeToggle<CR>
map <C-m> :NERDTreeFind<CR>

" ----------*---------- ----------*---------- ----------*---------- "

if has('win32')
  " CtrlP
  let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
"  nmap <Leader>e :CtrlP<CR>
  nmap <Leader>r :CtrlPBuffer<CR>
"  nmap <Leader>t :CtrlPMRU<CR>

  " Fullscreen
  map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR> 
endif

" ----------*---------- ----------*---------- ----------*---------- "
if has('unix')
  " fzf
  nmap <Leader>e :Buffers<CR>
  nmap <Leader>r :Files<CR>
  nmap <Leader>t :Tags<CR>

endif

" Delete buffer without cloing window
nnoremap <Leader>c :bp\|bd #<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  " set grepprg=ag\ --nogroup\ --nocolor
  let g:ackprg = 'ag --vimgrep'

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
endif

" Prettier
" single quotes over double quotes
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" Ack.vim
nnoremap <Leader>a :Ack!<Space>

" NerdCommenter
let g:NERDDefaultAlign = 'left'

set backupdir=~/tmp
set directory=~/tmp
set undodir=~/tmp

