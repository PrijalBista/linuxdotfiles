"For installing all the plugins using minimalist vim-plug

call plug#begin('~/.vim/plugged')
"declare the list of plugins
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'git://github.com/jaxbot/browserlink.vim.git'
call plug#end()

"syntax highlighting on
syntax on

"set line number on
set number

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

"setting for opening vim in new tab
nnoremap <leader>av :tabnew $MYVIMRC<CR>

"setting html autocomplete features
"autocmd Filetype html set omnifunc=htmlcomplete#CompleteTags
"setting tab size for html pages
"autocmd Filetype html setlocal tabstop=4

