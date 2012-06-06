colorscheme darkblue

"keymapping
map nt <ESC>:NERDTree<CR>
map <C-a> G$vgg
map ü vaw
map ä V
"only works with the tcomment plugin
map ö vipgc 
map <C-s> <ESC>:w<CR>
imap <C-s> <ESC>:w<CR>i
imap <C-v> <ESC>p
imap <C-x> x
map <C-x> x
map <C-c> y
imap <C-c> <ESC>y

imap <Tab> <C-N>

set nobackup

if has("autocmd")
  filetype indent on
  set sw=2 " no of spaces for indenting
  set ts=2 " show \t as 2 spaces and treat 2 spaces as \t when deleting, etc..
endif

" Plugins used:
" rails, tcomment, NerdTree

set nu " Line numbers on

set ai " Automatically set the indent of a new line (local to buffer)
set si " smartindent (local to buffer)
