" ====================================================
" Vim Keybinds File
" ====================================================
" Leader Keys
let g:mapleader = "\<Space>"
let g:maplocalleader = ','

" == If you are using fzf and fzf.vim   ==
" == set the path to the fzf executable ==
set rtp+=/opt/homebrew/opt/fzf

" ====================================================
" Which-key Config
" ====================================================
let g:which_key_map = {}

" Window Operations
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5' , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5' , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-right']    ,
      \ }
" file operations
let g:which_key_map.f = {
      \ 'name' : '+file',
      \ 'v' : 'open-vimrc',
      \ 'f' : 'find-file (cwd)',
      \ 'a' : 'find-file (all)',
      \ }
nnoremap <silent> <leader>fv :e $VIMHOME<CR>
nnoremap <silent> <leader>ff :FZF <CR> 
nnoremap <silent> <leader>fa :FZF /<CR> 

" open buffers
let g:which_key_map.o = {
      \ 'name' : '+open',
      \ 'q' : 'open-quickfix'    ,
      \ 'l' : 'open-locationlist',
      \ }
nnoremap <silent> <leader>oq  :copen<CR>
nnoremap <silent> <leader>ol  :lopen<CR>

" buffers
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ 'b' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

" open explorer
nnoremap <silent> \ :Ex<CR>
autocmd FileType netrw nnoremap <silent> <ESC> :bd<CR>

" register which-key
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>
autocmd! FileType which_key
