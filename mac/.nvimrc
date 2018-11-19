" vim-plug
call plug#begin()
Plug 'thenewvu/vim-colors-sketching'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-rhubarb'
Plug 'styled-components/vim-styled-components'
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
" Plug 'xolox/vim-easytags'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
if has('nvim')
  Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neosnippet.vim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/neosnippet-snippets'
else
  Plug 'shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()

colorscheme burnttoast256
syntax enable
filetype plugin indent on

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"""""""""""""
""""Notes""""
"""""""""""""
:let g:notes_directories = ['~/Documents/Notes']

" ale setup
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_javascript_eslint_use_global = 0
" let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --print-width 100'
let g:ale_fix_on_save = 1

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

let g:ag_working_path_mode="r"
let g:jsx_ext_required = 0

" Airline
let g:airline#extensions#tabline#enabled = 1
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
set wildignore=log/**,node_modules/**,target/**,tmp/**,tags*,*.rbc
set wildmenu                                                 " show a navigable menu for tab completion
set wildmode=longest,list,full
set expandtab
set shiftwidth=2
set softtabstop=2
set autowrite
set hidden                                                   " don't auto save buffers

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
autocmd FileType js nnoremap <leader>p :Prettier<CR>
nnoremap <leader>l :e!<CR>
nnoremap <leader>g :Gstatus<CR>
nnoremap <leader>h :Gdiff<CR>
nnoremap <leader>n :tabnew<CR>
nnoremap <leader>f za
nnoremap <leader>k :set foldmethod=indent<CR>
nnoremap <leader>F $v%zf
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>t :TagbarToggle<CR>

"fkeys
"TODO: Create 4 fkeys for working with Fugitive
:nnoremap <F3> :bp<CR>
:nnoremap <F4> :bn<CR>
:nnoremap <F5> gT<CR>
:nnoremap <F6> gt<CR>
:nnoremap <F8> :w<CR>

" Prettier Settings
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#print_width = 120
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#config_precedence = 'prefer-file'

" RECURSIVE AUTO CODE FOLDING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set foldmethod=indent   " code folding
" set foldlevel=1
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview

" Go Settings
autocmd FileType go nmap <leader>8  <Plug>(go-test)
autocmd FileType go nmap <leader>9  <Plug>(go-build)
autocmd FileType go nmap <leader>0  <Plug>(go-fmt)
autocmd FileType go nnoremap <leader>p :GoFmt<CR>
let g:go_fmt_command = "go-build"
let g:go_fmt_command = "goimports"

" HTML Settings
  " autocmd FileType html nmap <leader>p ggvG$==<CR>'i

" Enable basic mouse behavior such as resizing buffers.
set mouse=a
"""""""""""""""""""""""""""
"""The Silver Searcher"""""
"""""""""""""""""""""""""""
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ripgrep for ctrlp
" if executable('rg')
"   set grepprg=rg\ --color=never
"   let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'
"   let g:ctrlp_use_caching = 0
" endif

""""""""""
"""TMUX"""
""""""""""
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Goodies
" :%s/\.\.\//\.\.\/\.\.\//gi replace `../` with `../../`
"

"""""""""""""""
"" SNIPPETS."""
"""""""""""""""
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
