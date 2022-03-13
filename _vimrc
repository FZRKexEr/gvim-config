call plug#begin()
  Plug 'skywind3000/asyncrun.vim'
  Plug 'dracula/vim'
  Plug 'dense-analysis/ale'
call plug#end()

filetype on
set nocompatible
set encoding=utf-8
set fileencoding=utf-8

if has("gui_running")
set langmenu=zh_CN.UTF-8
  language message zh_CN.UTF-8
  source $VIMRUNTIME/menu.vim
  source $VIMRUNTIME/delmenu.vim
  set guifont=FixedsysTTF:h18:W600:cANSI:qDRAFT
  " set guioptions-=m
  set guioptions-=T
endif 

set number
set cindent
colo dracula
set signcolumn=yes
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set whichwrap+=<,>,h,l
set backspace=eol,indent

set wrap
syntax on
set hlsearch
set termguicolors
set background=dark
set clipboard=unnamed

let mapleader=' '
nnoremap <leader>r :call Cmp() <CR>

function! Cmp() 

  execute "w" 
  if &filetype == 'cpp'
    execute "AsyncRun -mode=term -pos=external -save=1 g++ -Wall -O2 -std=c++17 \"$(VIM_FILEPATH)\" && a.exe && del a.exe"
  elseif &filetype == 'python'
    execute "AsyncRun -mode=term -pos=external -save=1 py \"$(VIM_FILEPATH)\" "
  endif

endfunction

let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_cpp_cc_options = '-Wall -O2 -std=c++17'
