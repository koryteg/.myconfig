packadd minpac
call minpac#init()

call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-fugitive')
call minpac#add('k-takata/minpac', {'type': 'opt'})

"Always show current position
:set ruler
syntax enable
set background=dark
"colorscheme solarized
colorscheme railscasts


let mapleader=" "
:nmap <leader>so :source $MYVIMRC<cr>
:imap jk <Esc>
:imap kj <Esc>
:nnoremap <silent> <C-S> :update<cr>
:inoremap <silent> <C-S> <C-O>:update<cr>
:vnoremap <silent> <C-S> <C-C>:update<cr>
