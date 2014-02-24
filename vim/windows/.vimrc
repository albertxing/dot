"{{{ Bundles

" Vundle
filetype off
set rtp+=~/vimfiles/bundle/vundle
call vundle#rc('~/vimfiles/bundle/')

Bundle 'gmarik/vundle'
Bundle 'bling/vim-airline'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-fugitive'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'sjl/gundo.vim'

" Airline
set laststatus=2
let g:airline_theme='base16'
let g:airline_powerline_fonts=1
set noshowmode

" Ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore='Local Settings\|Application Data\|AppData\|\.git'
let g:ctrlp_clear_cache_on_exit=0

" NERDTree
let g:NERDTreeMinimalUI=1
let g:NERDTreeChDirMode=2

"}}}

"{{{ Visual
" If in gvim...
if has('gui_running')
	" Set default window size
	set lines=40 columns=90

	" Set dark Solarized theme
	set background=dark
	colorscheme ocean

	" Don't show no nothing
	" And use DejaVu
	set guioptions=ct
	set guifont=DejaVu_Sans_Mono_for_Powerline:h10
else
	" No fancy stuff in console
	colorscheme default
endif

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

set bs=2 " Backspace
set scrolloff=2 " Scrolling offset
set foldmethod=marker " Folding
set wildmenu " Tab autocompletion
set wildmode=list:longest,full " Autocompletion method
set undodir=~\vimfiles\undo " Undo sequences storage location
set undofile " Save undo sequences
set dir=~\vimfiles\backup " Swapfile storage location

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

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Clear search matches
nnoremap <leader><space> :noh<cr>

" Save some shift time
nnoremap ; :

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
nnoremap j gj
nnoremap k gk
"}}}
