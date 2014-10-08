"set guifont=Monaco:h12
set guifont=Consolas:h15

if has("gui_macvim")
  colorscheme Monokai
  highlight clear SignColumn
  highlight GitGutterAdd ctermfg=green
  highlight GitGutterChange ctermfg=yellow
  highlight GitGutterDelete ctermfg=red
  highlight GitGutterChangeDelete ctermfg=yellow
endif
