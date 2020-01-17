colorscheme jellybeans
syntax enable

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" Bold Cursor
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
