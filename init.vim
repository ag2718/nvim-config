if has('nvim')
    source $HOME/.config/nvim/vim-plug/plugins.vim
    source $HOME/.config/nvim/themes/ayu.vim
    source $HOME/.config/nvim/plug-config/coc.vim
    source $HOME/.config/nvim/plug-config/vimtex.vim
    source $HOME/.config/nvim/plug-config/fzf.vim
    source $HOME/.config/nvim/plug-config/sneak.vim
else
    colorscheme murphy
endif

set nocompatible
set number
set relativenumber

set noshowmode

set mouse=a

filetype on
filetype plugin indent on

let g:autopep8_disable_show_diff=1
let g:python3_host_prog = '/usr/local/bin/python3'

autocmd BufWritePost,FileWritePost *.cpp !g++ -Wall -std=c++11 -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %:r 
autocmd VimLeave *.cpp !rm %:r && rm -rf *.dSYM

let g:tex_no_error=1
autocmd BufWinLeave *.tex !rm *.fls *.aux *.fdb_latexmk *.gz *.toc *.out *.log *.synctex*

set tabstop=4
set shiftwidth=4
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
set expandtab

syntax on

set ignorecase

inoremap jk <Esc>
inoremap kj <Esc>

tnoremap jk <C-\><C-n>
tnoremap kj <C-\><C-n>

nnoremap j gj
nnoremap k gk

inoremap ˙ <left>
inoremap ∆ <esc>gji
inoremap ˚ <esc>gki
inoremap ¬ <right>
inoremap ∑ <esc>wi
inoremap é <esc>eli
inoremap ∫ <esc>bi

" Removing functionality of arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set clipboard+=unnamedplus

nnoremap <CR> :noh<CR><CR>

nnoremap  <silent>   <tab>  :up<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :up<CR>:bprev<CR>
