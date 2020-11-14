source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/themes/ayu.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/vimtex.vim
source $HOME/.config/nvim/plug-config/fzf.vim

set nocompatible
set number
set relativenumber

set noshowmode

filetype on
filetype plugin indent on

let g:autopep8_disable_show_diff=1
let g:python3_host_prog = '/usr/local/bin/python3'

autocmd BufWritePost,FileWritePost *.cpp !g++ -g -Werror -std=c++11 % -o %:r 
autocmd BufWinLeave *.cpp !rm %:r && rm -rf %:r.dSYM

let g:tex_no_error=1
autocmd BufWinLeave *.tex !rm *.fls *.aux *.fdb_latexmk *.gz *.toc *.out *.log *.synctex*

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

set noswapfile

set clipboard+=unnamedplus

" Emmet comma leader key
let g:user_emmet_leader_key=','

nnoremap <CR> :noh<CR><CR>

nnoremap  <silent>   <tab>  :x<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :x<CR>:bprev<CR>
