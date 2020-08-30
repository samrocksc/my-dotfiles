" vim-plug
call plug#begin()
" Plug 'maxmellon/vim-jsx-pretty'
" Plug 'heavenshell/vim-jsdoc'
" Plug 'tpope/vim-markdown'
Plug 'w0rp/ale'
" Plug 'ddollar/nerdcommenter'
Plug 'leafOfTree/vim-svelte-plugin'
Plug 'sotte/presenting.vim'
Plug 'aserebryakov/vim-todo-lists'
Plug 'hashivim/vim-terraform'
Plug 'leafgarland/typescript-vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jonsmithers/vim-html-template-literals'
Plug 'othree/jsdoc-syntax.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'kkoomen/vim-doge'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tommcdo/vim-fubitive'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'bronson/vim-trailing-whitespace'
Plug 'jiangmiao/auto-pairs'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
if has('nvim')
  Plug 'Shougo/neosnippet.vim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/neosnippet-snippets'
else
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'
endif
call plug#end()

filetype plugin indent on
filetype plugin on

""""""""""""""""""
""""Mappings""""""
""""""""""""""""""
source ~/.vim/mappings.vim
source ~/.vim/nerdtree.vim
source ~/.vim/jsdoc.vim
source ~/.vim/sets.vim
source ~/.vim/coc.vim
source ~/.vim/snippets.vim
source ~/.vim/theme.vim
source ~/.vim/notes.vim
source ~/.vim/general.vim
source ~/.vim/ag.vim
source ~/.vim/vimgo.vim
source ~/.vim/prettier.vim
source ~/.vim/markdown.vim
source ~/.vim/airline.vim
source ~/.vim/ui.vim
source ~/.vim/fugitive.vim
source ~/.vim/workonly.vim
source ~/.vim/terraform.vim
source ~/.vim/doge.vim

