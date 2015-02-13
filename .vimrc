set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'CycleColor'
Plugin 'ervandew/supertab'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Global settings 
set wildignore+=*/tmp/*,*.so,*.bin,*.zip,*.swp,*.hi,*.o,*.dyn_*,*/dist/*
filetype plugin indent on    
syntax on 
filetype on

set expandtab
set shiftwidth=2
set softtabstop=2

set backspace=2
set backspace=indent,eol,start

" Searching
set ignorecase
set smartcase
set incsearch 

" Map presing space to remove current highlighting
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" No audio bells 
  set vb t_vb=

set nocp

" CTRLP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrpl_working_path_mode = 'ra'

" CycleColor
nmap <F5> gT
nmap <F6> gt
