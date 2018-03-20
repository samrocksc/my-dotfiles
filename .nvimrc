" vim-plug
call plug#begin()
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'wincent/command-t', {
      \   'do': 'cd ruby/command-t/ext/command-t && ruby extconf.rb && make'
      \ }
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-rhubarb'
Plug 'blindFS/vim-taskwarrior'
Plug 'majutsushi/tagbar'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'w0rp/ale'
Plug 'vim-scripts/burnttoast256'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'eslint/eslint'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'bling/vim-airline'
Plug 'craigemery/vim-autotag'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
if has('nvim')
  Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()

colorscheme burnttoast256
syntax enable
filetype plugin indent on

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"set mouse
set mouse=a

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

let g:ag_working_path_mode="r"
let g:jsx_ext_required = 0

set smartindent
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamedplus                                        " yank and paste with the system clipboard
set directory-=.                                             " don't store swapfiles in the current directory
set encoding=utf-8
set ignorecase                                               " case-insensitive search
set incsearch                                                " search as you type
set laststatus=2                                             " always show statusline
set list                                                     " show trailing whitespace
set listchars=tab:▸\ ,trail:▫
set number                                                   " show line numbers
set ruler                                                    " show where you are
set scrolloff=3                                              " show context above/below cursorline
set showcmd
set smartcase                                                " case-sensitive search if any caps
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set expandtab
set shiftwidth=2
set softtabstop=2
set autowrite

"Autocmd
"autocmd BufWrite * normal mzgg=G'z

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>a :Ack<space>
nnoremap <leader>r :redraw!<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>e :source $MYVIMRC<CR>
nnoremap <leader>W :FixWhitespace<CR>
nnoremap <leader>z :Errors<CR>
nnoremap <leader>p :Prettier<CR>
nnoremap <leader>i :TagbarToggle<CR>
nnoremap <leader>l :e!<CR>

" Taskwarrior Settings
nnoremap <buffer> A       ... " add annotation
nnoremap <buffer> x       ... " delete annotation.
nnoremap <buffer> o       ... " open the annotation as a file.
nnoremap <buffer> a       ... " create new task.
nnoremap <buffer> d       ... " set the task in current line done.
nnoremap <buffer> D       ... " delete task
nnoremap <buffer> <Del>   ... " delete field/annotation/task
nnoremap <buffer> <Space> ... " select/remove current task to selected list
nnoremap <buffer> m       ... " modify current field.
nnoremap <buffer> M       ... " modify current task.
nnoremap <buffer> f       ... " change filter
nnoremap <buffer> r       ... " change report type
nnoremap <buffer> c       ... " execute a command for selected tasks/current task
nnoremap <buffer> R       ... " refresh the report/clear selected list
nnoremap <buffer> q       ... " quit buffer.
nnoremap <buffer> X       ... " clear all completed task.
nnoremap <buffer> p       ... " duplicate selected tasks
nnoremap <buffer> u       ... " undo last change.
nnoremap <buffer> +       ... " start task
nnoremap <buffer> -       ... " stop task
nnoremap <buffer> S       ... " sync with taskd server.
nnoremap <buffer> s       ... " sort by this column primarily.(if already of the highest priority then switch the polarity)
nnoremap <buffer> <       ... " sort by this column increasingly.(if already increasingly then increase its priority)
nnoremap <buffer> >       ... " sort by this column decreasingly.(if already decreasingly then decrease its priority)
nnoremap <buffer> H       ... " cycle column format left
nnoremap <buffer> L       ... " cycle column format right
nnoremap <buffer> J       ... " next historical entry
nnoremap <buffer> K       ... " previous historical entry
nnoremap <buffer> B       ... " create a bookmark for current combination
nnoremap <buffer> <F1>    ... " view the documents
nnoremap <buffer> <CR>    ... " show task info.
nnoremap <buffer> <TAB>   ... " jump to the next column
nnoremap <buffer> <S-TAB> ... " jump to the previous column
nnoremap <buffer> <right> ... " jump to the next non-empty column
nnoremap <buffer> <left>  ... " jump to the previous non-empty column
vnoremap <buffer> d       ... " set done to all visual selected tasks
vnoremap <buffer> D       ... " delete all visual selected tasks
vnoremap <buffer> <CR>    ... " show information about visual selected tasks
vnoremap <buffer> <Space> ... " add visual selected tasks to selected list

" Go Settings
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>f  <Plug>(go-fmt)
let g:go_fmt_command = "go-build"
let g:go_fmt_command = "goimports"

" Enable basic mouse behavior such as resizing buffers.
"set mouse=a
"if exists('$TMUX')  " Support resizing in tmux
"set ttymouse=xterm2
"endif

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Goodies
" :%s/\.\.\//\.\.\/\.\.\//gi replace `../` with `../../`
