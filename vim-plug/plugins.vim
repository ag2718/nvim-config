" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    "IntelliSense (COC)
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'mattn/emmet-vim'
    Plug 'honza/vim-snippets'
    Plug 'ayu-theme/ayu-vim'
    Plug 'itchyny/lightline.vim'
    Plug 'tpope/vim-commentary'
    Plug 'lervag/vimtex'
    Plug 'bling/vim-bufferline'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    call plug#end()
