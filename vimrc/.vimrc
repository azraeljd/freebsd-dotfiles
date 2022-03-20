" FreeBSD Dotfiles - .vimrc
"
" Vim text editor configuration file.
"
" Copyright (c) 2022 Azrael JD.

" Be iMproved
set nocompatible

" Start plug.vim plugin manager
call plug#begin('~/.vim/plugged')
Plug 'jacoborus/tender.vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

" Text search configuration
set incsearch
set hlsearch
set ignorecase
set smartcase

" Disable error sounds
set noerrorbells

" Enable line numbers
set number

" Disable show mode name as it is unnecessary
" since lightline is installed
set noshowmode

" Backup and swap file configuration
set nobackup
set nowb
set noswapfile

" Indent and tab configuration
set shiftwidth=4
set softtabstop=4
set expandtab

" Enable syntax highlighting
syntax enable

" Colorscheme configuration
colorscheme tender
if (has("termguicolors"))
  set termguicolors
endif

" NERDTree configuration
let g:NERDTreeWinSize=25
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
