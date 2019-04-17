"For installing all the plugins using minimalist vim-plug

call plug#begin('~/.vim/plugged')
"declare the list of plugins

 Plug 'alvan/vim-closetag'
 Plug 'scrooloose/nerdtree'
 Plug 'ervandew/supertab'
 Plug 'w0rp/ale'

call plug#end()

"syntax highlighting on
syntax on

"set line number on
set number

"set tabstop to 2
set tabstop=2

"for easier use of Tabs in vim
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap tf :tabfirst<CR>
nnoremap tl :tablast<CR>

"Setting colors for tabs
:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=Yellow

"setting for opening .vimrc in new tab leader='\'
nnoremap <leader>av :tabnew $MYVIMRC<CR>

"Autocomplete brackets
inoremap { {}<left>
inoremap {{ {
inoremap {} {}
inoremap [ []<left>
inoremap [[ [
inoremap [] []
inoremap ( ()<left>
inoremap (( (
inoremap () ()
inoremap " ""<left>
inoremap "" ""
inoremap ' ''<left>
inoremap '' ''

"ALE plugin related Configurations"

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1

"ALE autocomplete feature
let g:ale_completion_enabled = 1

"Ctrl+k and Ctrl+j to move between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

"Include vue files in filetype (vue filetype)"
augroup FiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.vue set filetype=javascript.vue
augroup END

"Then set linters for the vue filetypes 
let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
let g:ale_linters = {'vue': ['eslint', 'vls']}
