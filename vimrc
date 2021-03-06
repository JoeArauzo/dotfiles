set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" Plugin 'dracula/vim'
Plugin 'articicestudio/nord-vim'

" ...
:inoremap jk <esc>
map <C-n> :NERDTreeToggle<CR>
syntax on

au BufNewFile,BufRead $.sh,  *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
