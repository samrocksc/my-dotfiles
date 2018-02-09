" vim-plug
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'bronson/vim-trailing-whitespace'
Plug 'mtscout6/syntastic-local-eslint.vim'
Plug 'eslint/eslint'
Plug 'ddollar/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'bling/vim-airline'
Plug 'craigemery/vim-autotag'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-sensible'
Plug 'flazz/vim-colorschemes'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()

colorscheme burnttoast256
syntax enable
filetype plugin indent on

" Synastic
" Make sure you have these installe npm i -g estraverse estraverse-fb eslint-plugin-react babel-eslint
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"set mouse
set mouse=a

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
"If you want to disable a polyglot checker
"let g:polyglot_disabled = ['css']

let g:syntastic_error_symbol = 'xx'
let g:syntastic_style_error_symbol = 'xy'
let g:syntastic_warning_symbol = 'oo'
let g:syntastic_style_warning_symbol = 'oy'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

highlight SyntasticWarningLine guibg=#303000 ctermbg=234
highlight SyntasticWarning guibg=#303000 ctermbg=blue
highlight SyntasticError guibg=#303000 ctermbg=05F

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

let g:ag_working_path_mode="r"
let g:jsx_ext_required = 0


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
set tabstop=2                                                " actual tabs occupy 8 characters
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set expandtab
set shiftwidth=2
set softtabstop=2

"Autocmd
"autocmd BufWrite * normal mzgg=G'z

" keyboard shortcuts
let mapleader = ','
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
nnoremap <leader>l mzgg=G'z<CR>
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
nnoremap <leader>z :Errors<CR>

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

