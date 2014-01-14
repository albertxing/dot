"{{{ Bundles

" Vundle
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'

" Airline
if has('gui_running') || &term=='xterm-256color' || &term=='putty-256color'
	let g:airline_theme='base16'
	let g:airline_powerline_fonts=1
endif
set noshowmode
set laststatus=2

" Ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore='Local Settings\|Application Data\|AppData\|\.git'
let g:ctrlp_clear_cache_on_exit=0

"}}}

"{{{ Visual

" Set window metrics for GUI
if has('gui_running')
	" Set default window size
	set lines=40 columns=90
endif

" Pretty consoles only
if has('gui_running') || &term=~'\(xterm\|putty\)-256color'
	" Don't show no nothing
	" And use DejaVu
	set guioptions=ct
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10

	" Set dark Ocean theme
	set background=dark
	colorscheme ocean
else
	colorscheme default
endif

set noshowmode

" Enable syntax highlighting
" And line numbers
syntax on
set nu

" Set the tab width to 4
set tabstop=4
set shiftwidth=4

"}}}

"{{{ Behavior
set nocompatible
set encoding=utf8
let mapleader=","

set showcmd
set bs=2 " Backspace
set scrolloff=2 " Scrolling offset
set foldmethod=marker " Folding
set wildmenu
set wildmode=list:longest,full
set undodir=~/.vim/undo
set undofile

set ignorecase " Ignore case
set smartcase " Case-sensitive on uppercase
set incsearch " Incremental search
set showmatch " Show the matches
set hlsearch " Highlight all matches

" Turn on auto indentation
filetype plugin indent on
"}}}

"{{{ Map

" NERDTree
silent! map <F2> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F2>"
let g:NERDTreeMapPreview="<F3>"

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close if last window

" Clear search matches
nnoremap <leader><space> :noh<cr>

" Break bad habits;
" disable arrow key navigation
nnoremap <Up> <NOP>
nnoremap <Down> <NOP>
nnoremap <Left> <NOP>
nnoremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

"}}}
