set wrap
set colorcolumn=81 "to help us keep our lines under 80 chars

set go-=T
set columns=185
set lines=60
set cursorline
set ttyfast
set lazyredraw
colorscheme mustang
set anti
" Save when losing focus "
au FocusLost * :wa
if has("gui_macvim")
    set guifont=Monaco:h12
else
    set guifont=Monaco\ 9
endif

"vim gist config(specifically for OSX)
let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
    let g:pyflakes_use_quickfix = 0
endif

"Add the virtualenv's site-packages to vim path(if you are in a virtualenv)
if has("gui_macvim")
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
endif

nnoremap <S-Insert> <ESC>"+gP
nnoremap <C-Insert> <ESC>"+y
