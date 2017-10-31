syntax on

set backspace=indent,eol,start
let mapleader = ','

filetype plugin indent on

" Show line number
set number


" set guioptions-=m  "remove menu bar
set guioptions-=T  "toolbar


"----------Visuals-----------"
colorscheme one
set encoding=utf-8
let g:airline_powerline_fonts = 1
let g:airline_theme='one'
set t_CO=256

" Set font
set guifont=Fira_Code:h11

"----------Search-----------"
set hlsearch
set incsearch


"----------Split Management-----------"
set splitbelow
set splitright


"----------Mappings-----------"

" Go to vimrc file
nmap <Leader>ev :tabedit $HOMEPATH/vimfiles/vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>

"----------Auto-Commands---------"

"Auto source on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost vimrc source %
augroup END
