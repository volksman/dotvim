call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set hidden
set history=1000
set background=dark
set nocompatible
set number
set numberwidth=5
set encoding=utf8
"set smartindent
set showmatch
set vb t_vb=
set incsearch
set ls=2
set ruler
set ignorecase
set title
set ttyfast
set list
set visualbell

nnoremap ' `
nnoremap ` '

let mapleader = ","

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

setlocal incsearch
setlocal hlsearch

set shiftwidth=4
set tabstop=4
set expandtab

filetype plugin indent on

au FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
"Customisations based on personal preferences
au FileType html setlocal ts=2 sts=2 sw=2 noexpandtab
au FileType css setlocal ts=2 sts=2 sw=2 noexpandtab
au FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
" Treat .rss files as XML
au BufNewFile,BufRead *.rss setfiletype xml
"delete all trailing whitespace on save
au BufWritePre * :%s/\s\+$//e
"Autocomplete

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"python autocomplete with supertab
au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate"

au FileType javascript set omnifunc=javascriptcomplete#CompleteJS
au FileType html set omnifunc=htmlcomplete#CompleteTags
au FileType css set omnifunc=csscomplete#CompleteCSS
"enable django template syntax highlighting automatically
au BufRead,BufNewFile *.html setlocal filetype=htmldjango

au FileType htmldjango setlocal ts=2 sts=2 sw=2 noexpandtab

"everytime I save, source the vimrc
au bufwritepost .vimrc source $MYVIMRC

let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\.bak$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinSize=25

" Python.vim config
let python_highlight_all = 1
let python_slow_sync = 1
let g:pymode_folding = 0

"status line
set laststatus=2
set statusline=%{fugitive#statusline()}\ %F%m%r%h%w\ [fmt=%{&ff}]\ [type=%Y]\ [pos=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

let g:html_indent_tags = 'li\|p'

cmap w!! w !sudo tee %

let g:tagbar_usearrows = 1
nnoremap <leader>l :TagbarToggle<CR>

map <A-1> 1gt
map <A-2> 2gt
map <A-3> 3gt
map <A-4> 4gt
map <A-5> 5gt
map <A-6> 6gt
map <A-7> 7gt
map <A-8> 8gt
map <A-9> 9gt

map <C-Right> <ESC>:tabnext<CR>
map <C-Left> <ESC>:tabprev<CR>
map <C-t> <ESC>:tabnew<CR>

nnoremap <leader>n :NERDTree<CR>
nnoremap <F5> <Esc>:GundoToggle<CR>
nnoremap <leader>m :set paste!<CR>i

vmap st "zdi{% trans '<C-R>z' %}<ESC>
