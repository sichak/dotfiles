" plugins.editor.vim

"" Plugin: Vim Better Whitespace {{{
  " All trailing whitespace characters to be highlighted
  Plug 'ntpeters/vim-better-whitespace'
  " Disable this plugin for specific file types
  let g:better_whitespace_filetypes_blacklist=[
  \ 'diff', 'gitcommit', 'unite', 'qf', 'help', 'nerdtree'
  \ ]
  " Strip all trailing whitespace everytime save the file
  autocmd BufWritePre * StripWhitespace
"" }}}

"" Plugin: Lengthmatters {{{
  " Highlight the flooding part of an overly long line
  " Plug 'whatyouhide/vim-lengthmatters'
  " Highlight when opening a new window
  let g:lengthmatters_on_by_default=1
  " Whether to highlight based on the value of textwidth
  let g:lengthmatters_use_textwidth=1
  " Fallback if textwidth is not set
  let g:lengthmatters_start_at_column=81
  " No highlight when the file is read-only
  let g:lengthmatters_exclude_readonly=1
"" }}}

"" Plugin: Surround {{{
  " Highlight the flooding part of an overly long line
  Plug 'tpope/vim-surround'
"" }}}

"" Plugin: Auto-pairs {{{
  " Insert or delete in pairs
  Plug 'jiangmiao/auto-pairs'
"" }}}

" enable fold settings for {{{ }}}
" vim:foldmethod=marker:foldlevel=0
