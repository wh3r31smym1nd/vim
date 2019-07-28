set nu
set relativenumber


set softtabstop=4
set ts=4
set sw=4
set expandtab
set smarttab
set autoindent
set cindent
set nocompatible
set autowrite
set autoread


set mouse=a
set clipboard=unnamedplus

syntax on

colorscheme badwolf

au BufNewFile *.cc 0r ~/cpp_codes/template.cpp 
au BufWritePre *.cpp :ruby CppAutoInclude::process
au BufWritePre *.cc :ruby CppAutoInclude::process
au filetype cpp map <F4> :w<CR> :Autoformat <CR>
au filetype cpp map <F5> :!./%< <CR>
au filetype cpp map <C-c> ggVGy 
au filetype cpp map <F8> :!clear && g++ -std=c++17 -Wall -Wshadow -Wextra -O2 -DLOCAL % -o %< <CR>
au filetype cpp map <C-_> gcc

filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-commentary'
Plugin 'sjl/badwolf'
Plugin 'Chiel92/vim-autoformat'
Plugin 'quark-zju/vim-cpp-auto-include'
call vundle#end()            
filetype plugin indent on    
