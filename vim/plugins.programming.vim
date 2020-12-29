" plugins.programming.vim

""" Plugin: Vim Polyglot
  " A collection of language packs for Vim
  Plug 'sheerun/vim-polyglot'
  " No conceal in JSON
  let g:vim_json_syntax_conceal=0

""" Plugin: Ale
  " Asynchronous Lint Engine
  Plug 'dense-analysis/ale'
  " Enable airline integration
  let g:airline#extensions#ale#enabled = 1
  let g:ale_linters = {'go': ['gopls'],}

""" Plugin: Endwise
  " Wisely add `end` in ruby, vim, etc
  Plug 'tpope/vim-endwise', { 'for': [
  \ 'ruby', 'vim', 'sh', 'zsh', 'matlab', 'snippets'
  \ ] }

""" Plugin: Fugitive
  " Vim Git wrapper
  Plug 'tpope/vim-fugitive'

""" Plugin: Vim-Go
  " Go dev in Vim
  Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

""" Plugin: Vim Terraform
  " Vim Terraform Wrapper
  Plug 'hashivim/vim-terraform'
  let g:terraform_align=1
  let g:terraform_fmt_on_save=1

""" Plugin: YouCompleteMe
  " Vim Autocomplete
  Plug 'ycm-core/YouCompleteMe'
