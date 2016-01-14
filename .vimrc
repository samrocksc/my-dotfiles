"My Current Vim Modules
"---------
"VimClojure                      flattened                       nerdtree-git-plugin             vim-addon-mw-utils              vim-colors-solarized            vim-indent-guides               vim-markdown                    vim-solarized-powerline
"auto-pairs                      gnome-terminal-colors-solarized supertab                        vim-airline                     vim-fugitive                    vim-javascript                  vim-sensible                    vim-trailing-whitespace
"ctrlp.vim                       nerdcommenter                   syntastic                       vim-autotag                     vim-gitgutter                   vim-jsbeautify                  vim-snipmate
"eslint                          nerdtree                        tlib_vim                        vim-colors-lunatic              vim-hybrid                      vim-jsx                         vim-snippets

execute pathogen#infect()
set background=dark
colorscheme molokai 
syntax on
filetype plugin on
filetype plugin indent on
let g:vim_markdown_folding_disabled=1 "disables folding of markdown
let g:AutoPairsFlyMode = 0
let g:syntastic_javascript_checkers = ['eslint']

set smartindent
set autoindent
set autoread                                                 " reload files when changed on disk, i.e. via `git checkout`
set backspace=2                                              " Fix broken backspace in some setups
set backupcopy=yes                                           " see :help crontab
set clipboard=unnamed                                        " yank and paste with the system clipboard
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
set tabstop=8                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set expandtab
set shiftwidth=2
set softtabstop=2

"Synastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <leader>l :Align
nnoremap <leader>a :Ag<space>
nnoremap <leader>r :redraw!<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>d :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>R :so %<CR>
nnoremap <leader>e :source $MYVIMRC<CR>
nnoremap <leader>W :FixWhitespace<CR>
nnoremap <leader>s :SyntasticCheck<CR>
nnoremap <leader>S :SyntasticToggleMode<CR>

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
if exists('$TMUX')  " Support resizing in tmux
  set ttymouse=xterm2
endif

" Fix Cursor in TMUX
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

