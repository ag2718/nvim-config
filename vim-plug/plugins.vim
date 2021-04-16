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
    " Better syntax highlighting
    Plug 'mattn/emmet-vim'
    Plug 'honza/vim-snippets'
    " Themes / visual
    Plug 'ayu-theme/ayu-vim'
    Plug 'itchyny/lightline.vim'
    " Comment action
    Plug 'tpope/vim-commentary'
    " Latex support for vim
    Plug 'lervag/vimtex'
    " Displays buffers
    Plug 'bling/vim-bufferline'
    " Fuzzy finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Sneak motion
    Plug 'justinmk/vim-sneak'
    " Surround command
    Plug 'tpope/vim-surround' 
    "Ranger support in nvim
    Plug 'kevinhwang91/rnvimr'
    
call plug#end()
