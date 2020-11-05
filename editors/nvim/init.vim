call plug#begin(stdpath('data') . '/plugged')

Plug 'arcticicestudio/nord-vim'

call plug#end()

"" :inoremap jk <esc>
"" :inoremap Jk <esc>
set timeoutlen=300
inoremap jk <Esc>l
inoremap JK <Esc>l

colorscheme nord

set number relativenumber
set colorcolumn=80

autocmd FileType yaml setlocal tabstop=2 softtabstop=2 shiftwidth=2 expandtab
autocmd FileType sh setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType adoc setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
