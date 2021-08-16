""" Plugin: Better Whitespace
  " All trailing whitespace characters to be highlighted
  Plug 'ntpeters/vim-better-whitespace'
  " Disable this plugin for specific file types
  let g:better_whitespace_filetypes_blacklist=[
  \ 'diff', 'gitcommit', 'unite', 'qf', 'help', 'nerdtree',
  \ 'markdown' ]
