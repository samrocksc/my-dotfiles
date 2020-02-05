" vim-plug
call plug#begin()
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'junegunn/vim-emoji'
" Plug 'leafgarland/typescript-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'quramy/tsuquyomi'
" Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
Plug 'NLKNguyen/papercolor-theme'
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

filetype plugin indent on
filetype plugin on

""""""""""""""""""
""""Mappings""""""
""""""""""""""""""
source ~/.vim/mappings.vim
source ~/.vim/jsdoc.vim
source ~/.vim/sets.vim
source ~/.vim/coc.vim
source ~/.vim/snippets.vim
source ~/.vim/theme.vim
source ~/.vim/notes.vim
source ~/.vim/ale.vim
source ~/.vim/general.vim
source ~/.vim/ag.vim
source ~/.vim/vimgo.vim
source ~/.vim/prettier.vim
source ~/.vim/markdown.vim


