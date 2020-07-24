" plugins.search.vim

""" Plugin: CtrlP
  " Full path fuzzy file, buffer, mru, tag finder for Vim
  Plug 'ctrlpvim/ctrlp.vim'
  " Change default mapping
  let g:ctrlp_map='<c-p>'
  " Change default command
  let g:ctrlp_cmd='CtrlP'

""" Plugin: NERDTree
  " Explore filesystem with Vim
  Plug 'preservim/nerdtree'
  " Show hidden files
  let NERDTreeShowHidden=1
  " Automatically open NERDTree when vim start up with no files
  " autocmd StdinReadPre * let s:std_in=1
  " autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif
  " Close vim if the only window left open is a NERDTree
  autocmd bufenter * if (winnr('$') == 1 && exists('b:NERDTree')
  \ && b:NERDTree.isTabTree()) | q | endif
