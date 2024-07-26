set number
set relativenumber
set shiftwidth=4
set softtabstop=4
set ignorecase
set showmatch


set nocompatible
filetype plugin on
syntax on

call plug#begin()

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

Plug 'vimwiki/vimwiki'


Plug 'NLKNguyen/papercolor-theme'

Plug 'itchyny/lightline.vim'

call plug#end()


autocmd BufNewFile,BufRead *.tex :autocmd TextChanged,TextChangedI <buffer> silent write

set t_Co=256
set background=light
colorscheme PaperColor



setlocal spell
set spelllang=nl,en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
