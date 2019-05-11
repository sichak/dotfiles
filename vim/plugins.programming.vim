" plugins.programming.vim

"" Plugin: Vim Polyglot {{{
  " A collection of language packs for Vim
  Plug 'sheerun/vim-polyglot'
  " No conceal in JSON
  let g:vim_json_syntax_conceal=0
  " Enable syntax highlighting for JSDocs
  let g:javascript_plugin_jsdoc=1
"" }}}

"" Plugin: Syntastic {{{
  " Syntax checking for Vim with external syntax checker
  Plug 'vim-syntastic/syntastic'
  set statusline+=%#warningmsg#
  set statusline+=%{SyntasticStatuslineFlag()}
  set statusline+=%*
  let g:syntastic_always_populate_loc_list=1
  let g:syntastic_loc_list_height=5
  let g:syntastic_auto_loc_list=1
  let g:syntastic_check_on_open=1
  let g:syntastic_check_on_wq=0
  " Symbols
  let g:syntastic_error_symbol='✘'
  let g:syntastic_warning_symbol='▲'
  " For Python
  let g:syntastic_python_checkers=['flake8']
  " For Shell Script(sh, bash)
  let g:syntastic_sh_checkers=['shellcheck']
"" }}}

"" Plugin: Endwise {{{
" Wisely add `end` in ruby, vim, etc
  Plug 'tpope/vim-endwise', { 'for': [
  \ 'ruby', 'vim', 'sh', 'zsh', 'matlab', 'snippets'
  \ ] }
"" }}}

"" Plugin: YouCompleteMe {{{
" Autocomplete for Vim
  Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }
  " Close auto-complete window when finished
  let g:ycm_autoclose_preview_window_after_completion=1
  " goto definition
  map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"" }}}

"" Plugin: Flake8 {{{
" PEP 8 checking
  Plug 'nvie/vim-flake8'
  " Python highlighting
  let python_highlight_all=1
"" }}}

"" Plugin: Fugitive {{{
" Vim Git wrapper
  Plug 'tpope/vim-fugitive'
"" }}}
"
" enable fold settings for {{{ }}}
" vim:foldmethod=marker:foldlevel=0
