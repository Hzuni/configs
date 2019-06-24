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
set noautoindent
set clipboard=unnamed
set wildmenu
set shiftround
set incsearch
set relativenumber
set number

set mouse=a

" Key Mappings
nnoremap <silent> <C-l> :nohl<CR><C-l>
nnoremap <C-\> :NERDTreeToggle<CR>
vmap     <C-c> "+y<CR>
set pastetoggle=<F2>
nnoremap <F3> :cw<CR>
nnoremap <F5> :so ~/.vimrc<CR>

" Buffer comands
let mapleader = ","
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>
" nnoremap <leader>b :buffer<Space>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>d :bd<CR>
nnoremap <leader>a :b#<CR>

"Window Re-sizing
nnoremap <leader>l :vertical resize +5<CR>
nnoremap <leader>h :vertical resize -5<CR>


"ctags stuff for firmware
set tags=$FIRMWARE/tags,$FIRMWARE/TAGS,./tags,./TAGS,tags,TAGS,../tags,../TAGS,../../tags,../../TAGS,../../../tags,/usr/include/qt3/tags ",/usr/include/tags

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-syntastic/syntastic'
Plugin 'posva/vim-vue'
Plugin 'othree/html5.vim'
Plugin 'ervandew/supertab'
autocmd FileType vue syntax sync fromstart
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

" Fast grepping in vim
set grepprg=ag\ --nogroup\ --nocolor

" Fast ctrlp
 let g:ctrlp_user_command = 'ag %s -l -g "" --ignore libs'
 let g:ctrlp_use_caching = 0


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

