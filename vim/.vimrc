"Hasun Amarasekara Vimrc
set nocompatible              " be iMproved, required
filetype off                  " required
set shell=/bin/bash
set showmatch
set ignorecase
set smartcase
set incsearch
set nowrap
set hlsearch
set tabstop=2
set expandtab
set shiftwidth=2
set nofoldenable
set clipboard=unnamed
set wildmenu
set shiftround
set incsearch
set relativenumber
set number
set autoindent

" Key Mappings
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <C-\> :NERDTreeToggle<CR>
set pastetoggle=<F2>
nnoremap <F5> :so ~/.vimrc<CR>

" Leader Key Commands
let mapleader = ","

" Buffer Commands
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>d :bd<CR>
nnoremap <leader>a :b#<CR>

" Quickfix window commands
nnoremap <leader>q :copen<CR>
nnoremap <leader>k :cnext<CR>
nnoremap <leader>j :cprev<CR>

" Fast grepping in vim
set grepprg=ag

" Fast ctrlp
let g:ctrlp_user_command = 'ag %s -l -g "" --ignore libs'
let g:ctrlp_use_caching = 0
