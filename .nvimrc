" vim-plug
call plug#begin()
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'quramy/tsuquyomi'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'Shougo/denite.nvim'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'othree/jsdoc-syntax.vim'
Plug 'racer-rust/vim-racer'
Plug 'nanotech/jellybeans.vim'
Plug 'jparise/vim-graphql'
Plug 'davejlong/cf-utils.vim'
Plug 'davejlong/cf-utils.vim'
Plug 'ernstvanderlinden/vim-coldfusion'
Plug 'junegunn/seoul256.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'thenewvu/vim-colors-sketching'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'
" Plug 'samrocksc/vim-easytags'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-rhubarb'
" Plug 'majutsushi/tagbar'
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
Plug 'eslint/eslint'
Plug 'marcweber/vim-addon-mw-utils'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
if has('nvim')
  " Plug 'shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'Shougo/neosnippet.vim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/neosnippet-snippets'
else
  " Plug 'shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
endif
let g:deoplete#enable_at_startup = 1
call plug#end()

" colorscheme seoul256
colorscheme jellybeans
syntax enable
filetype plugin indent on
filetype plugin on

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


""""""""""""""""""
""""Mappings""""""
""""""""""""""""""
source ~/.vim/mappings.vim
source ~/.vim/jsdoc.vim



""""""""""""""""""
""""Typescript""""
""""""""""""""""""
let g:nvim_typescript#default_mappings = 1

""""""""""""""""""
""""""theme""""""
""""""""""""""""""
" let g:jellybeans_overrides = {
" \    'background': { 'ctermbg': 'none', '256ctermbg': 'none' },
" \}
if has('termguicolors') && &termguicolors
    let g:jellybeans_overrides['background']['guibg'] = 'none'
endif

"""""""""""""
""""Notes""""
"""""""""""""
:let g:notes_directories = ['~/Documents/Notes']

" ale setup
let g:ale_linters = {'javascript': ['eslint'],'typescript': ['tsserver', 'tslint'],'vue': ['eslint']}
let g:ale_linter_aliases = {'js': 'ts'}
let g:ale_typescript_tslint_executable = 'eslint'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
let g:ale_javascript_eslint_use_global = 0
let g:ale_javascript_eslint_executable = 'eslint'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma es5 --print-width 100'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_set_balloons = 1

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
set clipboard=unnamedplus                                    " yank and paste with the system clipboard
" set clipboard=unnamed                                      " osX Clipboard
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

""""""""""
"easy-tag"
""""""""""
" let g:easytags_suppress_ctags_warning = 1
let g:easytags_async = 1
let g:easytags_file = '~/.vim/tags'

""""""""""
""JSDOC""
""""""""""
let g:jsdoc_enable_es6 = 1
let g:jsdoc_allow_input_prompt = 1
let g:jsdoc_input_description	= 1

""""""""""""""""
""vim-markdown""
""""""""""""""""

set conceallevel=0
