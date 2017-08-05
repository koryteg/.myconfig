syntax on
packadd minpac
call minpac#init()

call minpac#add('tpope/vim-surround')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('tpope/vim-fugitive')
call minpac#add('rking/ag.vim')
call minpac#add('Chun-Yang/vim-action-ag')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add('scrooloose/nerdcommenter')
call minpac#add('scrooloose/nerdtree')
call minpac#add('janko-m/vim-test')
call minpac#add('k-takata/minpac', {'type': 'opt'})

set background=dark
colorscheme railscasts

" setting the temp file locations
set backupdir=~/.vim/backup_files//
set directory=~/.vim/swap_files//
set undodir=~/.vim/undo_files//

" change search term colors
hi Search cterm=NONE ctermfg=black ctermbg=white
let mapleader = "\<Space>"
" autocmd FileType html,css,hbs EmmetInstall
" caches ctrl+p in order to make it faster
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('Ag')
  let g:ctrlp_uer_command = 'Ag %s -l --nocolor -g ""'
endif
let g:ctrlp_custom_ignore = '\v[\/](bower_components|log|dist|vendor|node_modules|tmp)$'
"let g:ag_working_path_mode="r"
let g:vim_action_ag_escape_chars = '_#%.^$+?(){}[]\\|'
" use * to search current word in normal mode
nmap * <Plug>AgActionWord
" use * to search selected text in visual mode
vmap * <Plug>AgActionVisual
let g:portkey_autostart = 1
let g:portkey_adaptive_mappings = 1
" map <Leader>rt :!ctags --tag-relative --extra=+f -Rf.git/tags --exclude=.git,pkg --languages=-javascript,sql<CR><CR>
" set tags+=.git/tags
set runtimepath^=~/.vim/pack/minpac/start/ag.vim
" test shortcuts
nmap <silent> <leader>t :TestNearest<CR>
nmap <silent> <leader>T :TestFile<CR>
nmap <silent> <leader>tt :TestLast<CR>
nmap <silent> <leader>a :TestSuite<CR>
nmap <silent> <leader>g :TestVisit<CR>

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon
" Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixonsilent !stty -ixon

" control s will save file
imap <silent> <C-s> <esc>:w<cr>
nmap <silent> <C-s> :w<cr>

nmap <leader><leader> <CR>
" changing splits
nmap <leader>wj <C-w>j
nmap <leader>wk <C-w>k
nmap <leader>wh <C-w>h
nmap <leader>wl <C-w>l

" reload the source
:nmap <leader>so :source $MYVIMRC<cr>
:imap jk <Esc>
:imap kj <Esc>

" leader h will remove the highlighted search result
nmap <leader>h :nohlsearch<cr>
set ruler " show the cursor postition all the time
set laststatus=2
set scrolloff=3   " number of lines above of below cursor
set nocompatible
set backspace=indent,eol,start
set history=500   " keep 500 lines of command history
set showcmd       " display the incomplete commands  
set incsearch     " do incrmental searching
set hlsearch     " highlight search term 
set number
set relativenumber
set suffixesadd=.rb
set autoindent    " starts new line indented correctly
set smartindent   " smart indent

set tabstop=2     " Two spaces per tab as default
set shiftwidth=2
set expandtab

" neckbeard
let ruby_space_errors = 1
let c_space_errors = 1
set colorcolumn=81
