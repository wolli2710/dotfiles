syntax on

set nobackup

if has("autocmd")
  filetype indent on
  set sw=2 " no of spaces for indenting
endif

" Plugins used:
" rails, tcomment, NerdTree

filetype on " Automatically detect file types.
set nocompatible
set nobackup
syntax enable

set ts=2 " Tabs are 2 spaces
set bs=2 " Backspace over everything in insert mode
set shiftwidth=2 " Tabs under smart indent
set autoindent
set smarttab
set expandtab
set nocp incsearch
set cinwords=if,else,while,do,for,switch,case

set nowrap " Line wrapping off

" Visual
set showmatch " Show matching brackets.

set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)


" http://vimcasts.org/episodes/tidying-whitespace/"
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e

  " Clean up: restore previous search history, and cursor position
  let @/=_s

  call cursor(l, c)
endfunction

autocmd BufWritePre *.rb,*.erb,*.py,*.js,*.rake,*.css :call <SID>StripTrailingWhitespaces()
