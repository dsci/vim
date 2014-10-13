set guifont=Meslo\ LG\ L\ Regular\ for\ Powerline:h14

if has("gui_macvim")
  colorscheme Flatland
  highlight clear SignColumn
  highlight GitGutterAdd ctermfg=green
  highlight GitGutterChange ctermfg=yellow
  highlight GitGutterDelete ctermfg=red
  highlight GitGutterChangeDelete ctermfg=yellow
  
  " map ctrl+tab to switching tabs
  noremap <c-tab> :tabnext<cr>
  " more switching tabs
  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
  
  " use alt + arrow up to switch to  top split
  nmap <silent> <A-Up> :wincmd k<CR>
  " use alt + arrow down to switch to bottom split
  nmap <silent> <A-Down> :wincmd j<CR>
  " use alt + arrow left to switch to left split
  nmap <silent> <A-Left> :wincmd h<CR>
  " use alt + arrow right to switch to right split
  nmap <silent> <A-Right> :wincmd l<CR>
  
endif
