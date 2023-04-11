set number
set nocompatible
set expandtab
set shiftwidth=4
set smartindent
set autoindent
syntax on
filetype plugin on
syntax on
set clipboard+=unnamedplus
let g:airline_theme='base16_gruvbox_dark_hard'

call plug#begin('~/.config/nvim/plugged')
    Plug 'https://github.com/ap/vim-css-color'
    Plug 'vimwiki/vimwiki'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
