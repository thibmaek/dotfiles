" Make Vim more useful
set nocompatible
" Use the OS clipboard by default (on versions compiled with `+clipboard`)
set clipboard=unnamed
" Enhance command-line completion
set wildmenu
" Allow cursor keys in insert mode
set esckeys
" Allow backspace in insert mode
set backspace=indent,eol,start
" Optimize for fast terminal connections
set ttyfast
" Don’t create backups when editing files in certain directories
set backupskip=/tmp/*,/private/tmp/*
" Enable line numbers
set number
" Enable syntax highlighting
syntax on
" Highlight current line
set cursorline
" Use 2 spaces for tabs
set tabstop=2
" Highlight searches
set hlsearch
" Case insensetive searching
set ignorecase
" Enable mouse input in all modes
set mouse=a
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show current position
set ruler
" Hide startup message
set shortmess=atI
" Show current mode
set showmode
" Hint command while typing
set showcmd
" Strip trailing whitespace (,ss)
function! StripWhitespace()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  :%s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Automatic commands
if has("autocmd")
  " Enable file type detection
  filetype on
  " Treat .json files as .js
  autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript
  " Treat .md files as Markdown
  autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
endif

execute pathogen#infect()
