" Start pathogen first of all
execute pathogen#infect()

"use emacs-style tab completion when selecting files, etc
set wildmode=longest,list

" Set comma as leader
let mapleader=","

set nocompatible                " choose no compatibility with legacy vi
set encoding=utf-8

" Disable swap files; systems don't crash that often these days
set updatecount=0

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=4 shiftwidth=4      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set list                        " show invisible characters

"" Searching
set hlsearch                    " highlight matches
set ignorecase                  " searches are case insensitive...

"" Please line numbers
set number
set cursorline                  " Highline cursor line 

" To go back and forward between files
nnoremap <leader><leader> <c-^>
" Back to previous jump
nnoremap <leader>b ``

" Search commands
" double percentage sign in command mode is expanded
" to directory of current file - http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

" utilities to edit and write in the current buffer folder
nmap <leader>e :e %%
nmap <leader>w :w %%

" Activate ACK plugin search
nnoremap <leader>f :Ack 


" clear the search buffer when hitting return
:nnoremap <CR> :nohlsearch<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

map <Left> :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up> :echo "no!"<cr>
map <Down> :echo "no!"<cr>

nmap <F2> :copen<CR>
nmap <F4> :cclose<CR>
"nmap <C-n> :cn<CR>
"nmap <C-p> :cp<CR>

"Set gtags key maps
"nmap <F6> :Gtags -f %<CR>
"nmap <F7> :GtagsCursor<CR>
"nmap <F8> :Gozilla<CR>
"nmap <F9> :Gtags<SPACE>

"Set Ñ as usual english qwerty mapping
nmap ñ ;
nmap Ñ :

" Configure powerline
set fillchars+=stl:\ ,stlnc:\ 
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

" Until i know how it works disable smart dir selection for ctrlp
let g:ctrlp_working_path_mode=''

" Set coffee.script tab size
autocmd BufNewFile,BufReadPost *.coffee setlocal shiftwidth=2

" Autoformat all java files on save.
autocmd BufWritePre *.java Autoformat
" Change style option to get java standard formatting.
let g:formatprg_args_expr_java = '"--mode=java --style=java -pcH".(&expandtab ? "s".&shiftwidth : "t")'
