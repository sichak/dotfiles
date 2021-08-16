""" Plugin: Airline
  " Use statusline more effective
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  if exists('$DISPLAY')
    " Automatic population of the g:airline_symbols dictionary with
    " powerline symbols
    let g:airline_powerline_fonts=1
  endif
  " Specify theme for airline
  let g:airline_theme='onedark'
  "let g:airline_theme='minimalist'
