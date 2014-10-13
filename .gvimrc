set guifont=Meslo\ LG\ L\ Regular\ for\ Powerline:h14

if has("gui_macvim")
  colorscheme Flatland
  highlight clear SignColumn
  highlight GitGutterAdd ctermfg=green
  highlight GitGutterChange ctermfg=yellow
  highlight GitGutterDelete ctermfg=red
  highlight GitGutterChangeDelete ctermfg=yellow
endif
