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
set backspace=2
set backupcopy=yes                                           " see :help crontab
" yank and paste with the system clipboard
set clipboard=unnamedplus
" don't store swapfiles in the current directory
set directory-=.
set encoding=utf-8
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
set scrolloff=3
set showcmd

set cursorline!
set lazyredraw

" actual tabs occupy 8 characters
set tabstop=2
set wildignore=log/**,node_modules/**,target/**,tmp/**,tags*,*.rbc
" show a navigable menu for tab completion
set wildmenu
set wildmode=longest,list,full
set expandtab
set shiftwidth=2
set softtabstop=2
set autowrite
" don't auto save buffers
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup
" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Enable basic mouse behavior such as resizing buffers.
set mouse=a

" Bold Cursor
set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
