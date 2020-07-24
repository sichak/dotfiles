" general.vim

""" General
  " Make Vim more useful
  set nocompatible
  " Number of things to remember in history
  set history=256
  " Use the OS clipboard by default (on versions compiled with `+clipboard`)
  set clipboard=unnamed
  " Optimize for fast terminal connections
  set ttyfast
  " Allow backspace key
  set backspace=indent,eol,start
  " Set encoding
  set encoding=utf-8

""" Formatting
  " Set the default tabstop
  set tabstop=4
  set softtabstop=4
  " Set the default shift width for indents
  set shiftwidth=4
  " Set text width
  "set textwidth=79
  " Make tabs into spaces (set by tabstop)
  set expandtab
  " Smarter tab levels
  set smarttab
  " Copy indent from current line when starting a new line
  set autoindent
  " Do smart autoindenting when starting a new line
  set smartindent
  " Set file format
  set fileformat=unix
