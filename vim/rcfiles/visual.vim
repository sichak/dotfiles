" visual.vim

" Enable syntax highlighting
syntax on

" Line numbers on
set number

" Show ruler
set ruler

" Always show tab pannel
set showtabline=2

" Show the command typing
set showcmd

" Show matching brackets
set showmatch

" Bracket blinking
set matchtime=5

" Highlight current line
set cursorline

" Show cursorline for active window only
augroup highlight_active_window
  autocmd!
  autocmd BufEnter * setlocal cursorline
  autocmd BufLeave * setlocal nocursorline
augroup END

" No blinking
set novisualbell

" No noise
set noerrorbells

" Minimal number of screen lines to keep above and below the cursor
set scrolloff=3

" Always show status line.
set laststatus=2

" No conceal
set conceallevel=0

" Highlight searches
set hlsearch

" Ignore case of searches
set ignorecase

" Be sensitive when there's a capital letter
set smartcase

" Highlight dynamically as pattern is typed
set incsearch
