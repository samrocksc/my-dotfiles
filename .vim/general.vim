syntax enable
syntax sync fromstart
colorscheme jellybeans
" colorscheme atom-dark-256

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" Bold Cursor
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

let g:ctrlp_custom_ignore = 'node_modules\'
