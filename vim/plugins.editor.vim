" plugins.editor.vim

""" Plugin: Vim Better Whitespace
  " All trailing whitespace characters to be highlighted
  Plug 'ntpeters/vim-better-whitespace'
  " Disable this plugin for specific file types
  let g:better_whitespace_filetypes_blacklist=[
  \ 'diff', 'gitcommit', 'unite', 'qf', 'help', 'nerdtree',
  \ 'markdown' ]

""" Plugin: Surround
  " Quoting/parenthesizing made simple
  Plug 'tpope/vim-surround'

""" Plugin: Auto-pairs
  " Insert or delete in pairs
  Plug 'jiangmiao/auto-pairs'
