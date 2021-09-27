syntax enable
syntax sync fromstart
colorscheme jellybeans

let g:ctrlp_working_path_mode = 'a'
" let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'


" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" Airline
" let g:airline#extensions#tabline#enabled = 1
set smartindent
set autoindent
" makes nvim faster on osx
set nocompatible
set ttyfast

" reload files when changed on disk, i.e. via `git checkout`
set autoread

" Fix broken backspace in some setups
" set backspace=2
set backspace=indent,eol,start

set backupcopy=yes                                           " see :help crontab

" yank and paste with the system clipboard
set clipboard=unnamedplus

" don't store swapfiles in the current directory
set directory-=.

" case-insensitive search
set ignorecase
" case-sensitive search if any caps
" set smartcase

" search as you type
set incsearch

" always show statusline
set laststatus=2

" show trailing whitespace
set list
set listchars=tab:▸\ ,trail:▫

" show line numbers
set number

" show where you are
set ruler

" show context above/below cursorline
" set scrolloff=3
" set showcmd

set cursorline!
set lazyredraw

" actual tabs occupy 8 characters
set tabstop=2
set wildignore=log/**,node_modules/**,target/**,tmp/**,tags*,*.rbc

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" Bold Cursor
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
