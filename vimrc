" this is my (crude) vimrc :]
colorscheme ron
set background=dark
set number
set ruler

call plug#begin('~/.vim/plugged')

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" File tree
Plug 'preservim/nerdtree'

" Indent lines
" Plug 'nathanaelkane/vim-indent-guides'

" Lightline status bar
Plug 'itchyny/lightline.vim'

call plug#end()

" have indent guides enabled by default:
" let g:indent_guides_enable_on_vim_startup = 1

" indents too big:
" let g:indent_guides_guide_size = 1
" let g:indent_guides_start_level = 2

" enable lightline
let g:lightline = {'colorscheme' : 'default','active' : { 'left' : [['mode', 'paste'],['readonly','filename','modified']], 'right': [['lineinfo'],['percent'],['fileformat','fileencoding','filetype','charvaluehex']]}}
set laststatus=2

" since Lightline displays mode information, the statusline is unnecessary:
set noshowmode

" navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" better splits
set splitbelow
set splitright

" faster cpp compile
autocmd filetype cpp nnoremap <F4> :!g++ ./*.cpp -o program <CR>
autocmd filetype c nnoremap <F4> :!gcc./*.cpp -o program <CR>
autocmd filetype cpp nnoremap <F5> :!./program <CR>
