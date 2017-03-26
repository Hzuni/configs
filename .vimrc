" Description: Hasun Amarasekara's most basic vimrc

set nocompatible    
filetype plugin on
" filetype off                 

"set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" disable vi compatibility (emulation of old bugs)
set nocompatible

" use indentation of previous line
set autoindent

" use intelligent indentation for C
set smartindent

" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces

" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120

" turn syntax highlighting on
syntax on

" turn line numbers on
set relativenumber
set number
set cursorline 
set showcmd

" highlight matching braces
set showmatch

" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

" Make searching less of a bitch.
set hlsearch
set incsearch
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Something for really long lines
noremap j gj
noremap k gk

" Past Mode configs 
nnoremap <F3> :set invpaste paste?<CR>
set pastetoggle=<F3>
set showmode

" Coloring 
syntax on

" Key Additions
nnoremap <F5> :make<bar>copen<return>
nnoremap <C-\> :NERDTreeToggle<CR>
" nnoremap <F2>  :vsplit .<CR>
set mouse=a

" This stuff helps?
set wildmenu
set lazyredraw

"Start the Pathogen package manager
execute pathogen#infect()

