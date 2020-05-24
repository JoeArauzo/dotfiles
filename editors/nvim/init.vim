call plug#begin(stdpath('data') . '/plugged')

Plug 'arcticicestudio/nord-vim'

call plug#end()

:inoremap jk <esc>
:inoremap Jk <esc>

colorscheme nord

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
