" general.vim

" Make Vim more useful
set nocompatible
" Number of things to remember in history
set history=256
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Optimize for fast terminal connections
set ttyfast

""" Folding {{{
  " Turn on folding
  set foldenable
  " Make folding indent sensitive
  set foldmethod=indent
  " Don't autofold anything
  set foldlevel=99
  " Don't open folds when search into them
  set foldopen-=search
  " Don't open folds when undo stuff
  set foldopen-=undo
""" }}}

""" Encoding {{{
  set encoding=utf-8
""" }}}

""" Formatting {{{
  " Set the default tabstop
  set tabstop=4
  set softtabstop=4
  " Set the default shift width for indents
  set shiftwidth=4
  " Make tabs into spaces (set by tabstop)
  set expandtab
  " Smarter tab levels
  set smarttab
  " Copy indent from current line when starting a new line
  set autoindent
  " Do smart autoindenting when starting a new line
  set smartindent
""" }}}

" enable fold settings for {{{ }}}
" vim:foldmethod=marker:foldlevel=0
