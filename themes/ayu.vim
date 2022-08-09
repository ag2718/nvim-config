set termguicolors     " enable true colors support
let ayucolor="dark"   " for dark version of theme
let g:lightline = {
      \ 'colorscheme': 'ayu_mirage',
      \ }
colorscheme ayu

" IndentLine {{
let g:indentLine_setColors = 0
" }}

autocmd ColorScheme * highlight! Normal ctermbg=NONE guibg=NONE
