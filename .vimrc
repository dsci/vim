set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'
Bundle 'flazz/vim-colorschemes'
"Bundle 'Valloric/YouCompleteMe'
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
Bundle 'vim-scripts/tlib'
Bundle 'garbas/vim-snipmate'
Bundle 'bling/vim-airline'
Bundle 'pbrisbin/vim-mkdir'
Bundle 'jeroenbourgois/vim-actionscript'
Bundle 'nice/sweater'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'DAddYE/soda.vim'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle "pangloss/vim-javascript"
Bundle 'whatyouhide/vim-gotham'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'tpope/vim-endwise'
Bundle 'junegunn/vim-pseudocl'
Bundle 'junegunn/vim-oblique'
Bundle 'octref/RootIgnore'
Bundle 'blerins/flattown'
Bundle 'majutsushi/tagbar'
Bundle 'mileszs/ack.vim'
Bundle 'ajh17/Spacegray.vim'
Bundle 'fholgado/minibufexpl.vim'

filetype plugin indent on
syntax enable
if !has("gui_running")
  set term=builtin_ansi
endif

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
set antialias

set showmatch
set hlsearch
set noerrorbells

" Use ack instead of grep
set grepprg=ack

" Always show statusline
set laststatus=2
" Use 256 colours (Use this setting only if your terminal supports 256 colours)
set t_Co=256

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\u3000"


" Enable folding based on syntax rules
set foldmethod=syntax
set foldlevelstart=1
set nofoldenable

"" Adjust the highlighting
highlight Folded guibg=grey guifg=blue

"" Map folding to Spacebar
nnoremap  za

let javaScript_fold=1         " JavaScript
let perl_fold=1               " Perl
let php_folding=1             " PHP
let r_syntax_folding=1        " R
let ruby_fold=1               " Ruby
let sh_fold_enabled=1         " sh
let vimsyn_folding='af'       " Vim script
let xml_syntax_folding=1      " XML

" map
" nmap , \
let mapleader = ","
map <F2> :NERDTreeToggle<CR>
map <leader>p :CtrlP

set lines=999 

set splitbelow
set splitright

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_force_overwrite_completefunc = 1

" Store temporary files in standard location.
let g:neocomplcache_temporary_dir='~/.vim/neocomplcache'

" Define keyword.
let g:neocomplcache_keyword_patterns = {}
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Enable heavy omni completion.
let g:neocomplcache_omni_patterns = {}
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'

" Completes from all buffers.
if !exists('g:neocomplcache_same_filetype_lists')
  let g:neocomplcache_same_filetype_lists = {}
endif
let g:neocomplcache_same_filetype_lists.gitconfig = '_'
let g:neocomplcache_same_filetype_lists._ = '_'

" vim rspec
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_runner = "os_x_iterm"

" RootIgnore
" As long as it doesn't contain 'r' it's fine
let g:ctrlp_working_path_mode = '0'


colorscheme flattown

" map tab movement
nnoremap <C-e> :tabprevious<CR>
nnoremap <C-w>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-e> <Esc>:tabprevious<CR>i
inoremap <C-w>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

nmap <F8> :TagbarToggle<CR>

" buffer movement
map <C-S-P> :bp<cr>
map <C-S-W> :bn<cr>
 
" local config files
if filereadable(glob("~/.vimrc.local"))
  source ~/.vimrc.local
endif
