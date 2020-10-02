source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/ayu.vim

set nocompatible
set number
set relativenumber

filetype on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab

syntax on

inoremap jk <Esc>
inoremap kj <Esc>

" Removing functionality of arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
