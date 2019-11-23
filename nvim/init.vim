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

:command! CP let @0 = expand('%:p')

" ----------*---------- ----------*---------- ----------*---------- "

call plug#begin('~/.vim/plugged')
  Plug 'altercation/vim-colors-solarized'
  Plug 'miyakogi/conoline.vim'

  Plug 'scrooloose/nerdcommenter'
  Plug 'scrooloose/nerdtree'
  Plug 'google/vim-searchindex'

  Plug 'tpope/vim-fugitive'
  Plug 'airblade/vim-gitgutter'

  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
  Plug 'junegunn/fzf.vim'

  Plug 'tpope/vim-surround'
  Plug 'Raimondi/delimitMate'

  " Completion
  Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}

  " HTML
  Plug 'mattn/emmet-vim'

  " Styled Component
  "Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

  " JavaScript/TypeScript
  Plug 'leafgarland/typescript-vim'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  "Plug 'maxmellon/vim-jsx-pretty'


  " Go
  " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

  " Formatter
  Plug 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()

set background=light
colorscheme solarized

" fzf
nmap <Leader>b :Buffers<CR>
nmap <C-P> :GFiles --recurse-submodules<CR>
nmap <Leader>m :Commands<CR>
nmap <Leader>rg yiwq:aRg <Esc>p<CR>
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.<q-args>, 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)

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
let g:gitgutter_map_keys = 0

" NerdTree
let NERDTreeShowHidden=1
nmap <Leader>n :NERDTree
nmap <Leader>nf :NERDTreeFind<CR>
nmap <Leader>nc :NERDTreeClose<CR>
nmap <Leader>nv :NERDTreeVCS<CR>

" Fugitive
nmap <Leader>gb :Gblame<CR>

" COC
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> dp <Plug>(coc-diagnostic-prev)
nmap <silent> dn <Plug>(coc-diagnostic-next)
nmap <leader>rn <Plug>(coc-rename)
command! -nargs=0 Format :call CocAction('format')
nmap <leader>f :Format<CR>

" Cursor Line
let g:conoline_auto_enable = 1

" Emmit
let g:user_emmet_leader_key='<s-tab>'

" Neovim terminal
au TermOpen * setlocal nonumber norelativenumber
tnoremap <Esc> <C-\><C-n>

set backupdir=~/tmp
set directory=~/tmp
set undodir=~/tmp
