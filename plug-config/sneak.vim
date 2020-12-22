let g:sneak#label = 1

" Case insensitive sneak
let g:sneak#use_ic_scs = 1

" Immediately move to the next instance of search
let g:sneak#s_next = 1

" Enables the use of , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Cool prompts
 let g:sneak#prompt = ' '
