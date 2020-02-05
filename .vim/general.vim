colorscheme jellybeans
syntax enable

"""papercolor"""
" set t_Co=256   " This is may or may not needed.
" set background=dark
" colorscheme PaperColor

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" Bold Cursor
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
