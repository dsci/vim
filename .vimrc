set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'flazz/vim-colorschemes'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'vim-ruby/vim-ruby'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-haml'
Bundle 'yaymukund/vim-rabl'
Bundle 'kchmck/vim-coffee-script'
Bundle 'thoughtbot/vim-rspec'
Bundle 'burnettk/vim-angular'
Bundle 'tpope/vim-cucumber'
Bundle 'scrooloose/syntastic'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'shumphrey/fugitive-gitlab.vim'
Bundle 'marcweber/vim-addon-mw-utils'
Bundle 'garbas/vim-snipmate'

filetype plugin indent on
syntax enable
set term=builtin_ansi
set nu
set cursorline

set shell=/bin/sh

highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
au InsertLeave * hi Cursor guibg=red
au InsertEnter * hi Cursor guibg=green
set colorcolumn=80

set ruler
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


" Tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set autoindent
set copyindent

" Use ack instead of grep
set grepprg=ack
