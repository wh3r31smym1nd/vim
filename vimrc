set number
set relativenumber


set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set cindent
set nocompatible

set mouse=a
set clipboard=unnamedplus

syntax on



filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-commentary'
Plugin 'sjl/badwolf'
call vundle#end()            
filetype plugin indent on    
