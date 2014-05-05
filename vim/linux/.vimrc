"{{{ Plugins

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'AutoComplPop'
Plugin 'tpope/vim-surround'

call vundle#end()

" Airline
if has('gui_running') || &term=='xterm-256color' || &term=='putty-256color'
	let g:airline_theme='base16'
	let g:airline_powerline_fonts=1
	let g:airline_mode_map = {
				\ '__' : '-',
				\ 'n'  : 'N',
				\ 'i'  : 'I',
				\ 'R'  : 'R',
				\ 'c'  : 'C',
				\ 'v'  : 'V',
				\ 'V'  : 'V',
				\ '' : 'V',
				\ 's'  : 'S',
				\ 'S'  : 'S',
				\ '' : 'S',
				\ }
endif
set noshowmode
set laststatus=2

" Ctrlp
let g:ctrlp_show_hidden=1
let g:ctrlp_custom_ignore='Local Settings\|Application Data\|AppData\|\.git'
let g:ctrlp_clear_cache_on_exit=0

" NERDTree
let g:NERDTreeMinimalUI=1
let g:NERDTreeChDirMode=2

" AutoComplPop
let g:acp_behaviorKeywordLength=2

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
	set guifont=Source\ Code\ Pro\ for\ Powerline\ 10

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
set dir=~/.vim/backup " Swapfile storage location

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
nnoremap j gj
nnoremap k gk

"}}}
