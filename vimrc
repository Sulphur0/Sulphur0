colorscheme ron
set background=dark
set number
set ruler
set encoding=UTF-8

call plug#begin('~/.vim/plugged')

" File tree
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'

" Lightline status bar
Plug 'itchyny/lightline.vim'

" Error highlighting
Plug 'dense-analysis/ale'

call plug#end()

" enable lightline
let g:lightline = {'colorscheme' : 'default','active' : { 'left' : [['mode', 'paste'],['readonly','filename','modified']], 'right': [['lineinfo'],['percent'],['fileformat','fileencoding','filetype','charvaluehex']]}}
set laststatus=2

" since Lightline displays mode information, the statusline is unnecessary:
set noshowmode

" navigate between splits
nnoremap <C-W><Down> <C-W><C-J>
nnoremap <C-W><Left> <C-W><C-H>
nnoremap <C-W><Up> <C-W><C-K>
nnoremap <C-W><Right> <C-W><C-L>

" resize splits
nnoremap <C-Left> :exe "vertical resize +5"<CR>
nnoremap <C-Up> :exe "res -5"<CR>
nnoremap <C-Right> :exe "vertical resize -5"<CR>
nnoremap <C-Down> :exe "res +5"<CR>

" better splits
set splitbelow
set splitright

" faster workflow
autocmd filetype c nnoremap <F4> :!gcc ./*.c -o program <CR>
autocmd filetype c nnoremap <C-F4> :!gcc -g ./*.c -o program <CR>
autocmd filetype c nnoremap <F5> : !./program <CR>

autocmd filetype cpp noremap <F4> :!make all <CR>
autocmd filetype cpp nnoremap <F5> :!./program <CR>

autocmd filetype lua nnoremap <F5> :!love ./ <CR>

autocmd filetype rust nnoremap <F5> :!cargo run <CR>
autocmd filetype rust nnoremap <F4> :!cargo build <CR>

" gcd debug
packadd termdebug
" :Termdebug to run, C-d to quit, C-\C-n for visual
nnoremap <C-q> <C-\><C-n>
