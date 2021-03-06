" vim-plug
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rhubarb'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'hashivim/vim-terraform'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'"
Plug 'mustache/vim-mustache-handlebars'
Plug 'mhinz/vim-signify'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'joaohkfaria/vim-jest-snippets'
Plug 'puremourning/vimspector'
Plug 'vimwiki/vimwiki'
" if has('nvim')
"   Plug 'Shougo/neosnippet.vim'
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
"   Plug 'Shougo/neosnippet-snippets'
" else
"   Plug 'roxma/nvim-yarp'
"   Plug 'roxma/vim-hug-neovim-rpc'
"   Plug 'Shougo/neosnippet.vim'
"   Plug 'Shougo/neosnippet-snippets'
" endif
call plug#end()

filetype plugin indent on
filetype plugin on

""""""""""""""""""
"""""Plugins""""""
""""""""""""""""""
source ~/.vim/general.vim
source ~/.vim/mappings.vim
source ~/.vim/coc.vim
source ~/.vim/nerdtree.vim
source ~/.vim/terraform.vim
source ~/.vim/wiki.vim

" let g:vimspector_enable_mappings = 'HUMAN'
" " packadd ~/.vim/pack/vimspector/opt/vimspector


autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

let g:node_client_debug = 1

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

let g:vimspector_enable_mappings = 'HUMAN'
" :call vimspector#Launch()
