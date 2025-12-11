
" ====================================================
" General Settings
" ====================================================
set nocompatible
set path+=**
set timeout
set timeoutlen=250
filetype plugin indent on
set cursorline
set cursorlineopt=line
set updatetime=300
set showmode
set showcmd
set nobackup
set nowritebackup
set encoding=utf-8
let &t_Co=256
syntax on

" mouse and clipboard
set mouse=a
set clipboard=unnamed

" search settings
set incsearch
set ignorecase
set smartcase
set showmatch

" tabs and indentation
set textwidth=80
set smartindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

" gutter and line numbers
set number
set relativenumber
set fillchars+=eob:\ 

" colors and themes
set termguicolors
let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow-night-eighties
set background=dark

" trandsparency
hi Normal guibg=NONE ctermbg=NONE

" highlightedyank settings
let g:highlightedyank_highlight_duration = 200

" set show pairs
set showmatch

" Allow netrw cd
" let g:netrw_keepdir= 1
