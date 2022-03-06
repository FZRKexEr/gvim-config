call plug#begin()
  Plug 'skywind3000/asyncrun.vim'
  Plug 'dracula/vim'
call plug#end()

filetype on
set nocompatible
set encoding=UTF-8
set fileencoding=utf-8

" Gvim 专用 
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
source $VIMRUNTIME/menu.vim
source $VIMRUNTIME/delmenu.vim
set guifont=Cascadia_Code:h15:cANSI:qDRAFT
set guioptions-=m
set guioptions-=T
" end

set number
set cindent
colo dracula
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set wrap
syntax on
set hlsearch
set termguicolors
set background=dark
set clipboard=unnamed

let mapleader=' '
nnoremap <leader>r :AsyncRun -mode=term -pos=external -save=1 g++ -Wall -O2 -std=c++20 "$(VIM_FILEPATH)" && a.exe && del a.exe <CR>
