"Load plugin and colorscheme files
    if has('nvim')
        source $HOME/.config/nvim/vim-plug/plugins.vim
        source $HOME/.config/nvim/themes/ayu.vim
        source $HOME/.config/nvim/plug-config/coc.vim
        source $HOME/.config/nvim/plug-config/vimtex.vim
        source $HOME/.config/nvim/plug-config/fzf.vim
        source $HOME/.config/nvim/plug-config/sneak.vim
        source $HOME/.config/nvim/plug-config/emmet.vim
    else
        colorscheme murphy
    endif

"General options

set linebreak

set nocompatible
set number
set mouse=a
set relativenumber

set noshowmode

set ignorecase

filetype on
filetype plugin indent on

syntax on

" Automatically open fzf when buffer is empty
autocmd VimEnter * if @% == "" | Files

"Filetype-specific customizations

" autocmd BufWritePost,FileWritePost *.cpp !g++ -g -Wall -std=c++11 -fsanitize=undefined -D_GLIBCXX_DEBUG % -o %:r 
" autocmd VimLeave *.cpp !rm %:r && rm -rf *.dSYM

let g:python_highlight_space_errors = 0

let g:tex_no_error=1
autocmd BufWinLeave,BufReadPost *.tex !rm *.fls *.aux *.fdb_latexmk *.gz *.toc *.out *.log *.synctex*
highlight Conceal guifg=#ffff00

function TexDiagram()
    let l:name = input("Name of diagram? ")
    exec "normal i \\includegraphics[width=\\textwidth]{" . l:name . ".png}" 
    exec "!convert -size 640x480 xc:white " . l:name . ".png"
    exec "!open" l:name . ".png"
endfunction

autocmd BufRead,FileReadPre *.jpg,*.png,*.gif,*.pdf call OpenImg()
function OpenImg()
    !open %
    echo "Opened File"
    bd
endfunction

set tabstop=4
set shiftwidth=4
autocmd FileType cpp setlocal shiftwidth=2 tabstop=2
set expandtab


"Some custom keyboard shortcuts

inoremap jk <Esc>
inoremap kj <Esc>

tnoremap ∆˚ <C-\><C-n>:bnext<CR>
tnoremap ˚∆ <C-\><C-n>:bnext<CR>

nnoremap j gj
nnoremap k gk

inoremap ˙ <left>
inoremap ∆ <C-o>gj
inoremap ˚ <C-o>gk
inoremap ¬ <right>
inoremap ∑ <C-o>w
inoremap é <C-o>el
inoremap ∫ <C-o>b
inoremap « <C-o>diw

nnoremap <CR> :noh<CR><CR>

" Removing functionality of arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

"Using system keyboard
set clipboard+=unnamedplus

" Shortcut to change buffers
nnoremap  <silent>   <tab>  :up<CR>:bnext<CR>
nnoremap  <silent> <s-tab>  :up<CR>:bprev<CR>

"Shortcuts to switch splits
nnoremap ˙ :wincmd h<CR>   
nnoremap ∆ :wincmd j<CR>   
nnoremap ˚ :wincmd k<CR>   
nnoremap ¬ :wincmd l<CR>   
