
" ====================================================
" General Settings
" ====================================================
if has("unix")
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    set rtp+=/opt/homebrew/opt/fzf
  else
    set rtp+=/usr/bin/fzf
  endif
endif

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
set tabstop=2
set softtabstop=2
set shiftwidth=2
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

" transparency
hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

" highlightedyank settings
let g:highlightedyank_highlight_duration = 200

" set show pairs
set showmatch

" undo
set undofile
let undo_dir = expand('$HOME/.vim/undodir')
if !isdirectory(undo_dir)
   call mkdir(undo_dir, "p")
endif
set undodir=undo_dir
set noswapfile

" python specific settings
autocmd filetype python set expandtab
autocmd filetype python set tabstop=4
autocmd filetype python set shiftwidth=4
autocmd filetype python set softtabstop=4
