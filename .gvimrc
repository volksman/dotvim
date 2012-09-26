set go-=T
set columns=185
set lines=60
set anti

" Save when losing focus "
au FocusLost * :wa
set guifont=Inconsolata\ 9

"vim gist config(specifically for OSX)
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

"if has("gui_macvim")
"    set guifont=Monaco:h12
"else
"	set guifont=Monaco\ 9
"	endif

nnoremap <S-Insert> <ESC>"+gP
nnoremap <C-Insert> <ESC>"+y
highlight LineNr guibg=black
