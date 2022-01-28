" vim-plug
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'nanotech/jellybeans.vim'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-rhubarb'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'bronson/vim-trailing-whitespace'
Plug 'hashivim/vim-terraform'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mustache/vim-mustache-handlebars'
Plug 'mhinz/vim-signify'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'jiangmiao/auto-pairs'
Plug 'vimwiki/vimwiki'
Plug 'jonsmithers/vim-html-template-literals'
Plug 'easymotion/vim-easymotion'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'fannheyward/telescope-coc.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'kyazdani42/nvim-web-devicons'
Plug 'feline-nvim/feline.nvim'
call plug#end()

filetype plugin indent on

""""""""""""""""""
"""""Plugins""""""
""""""""""""""""""
source ~/.config/nvim/vimfiles/general.vim
source ~/.config/nvim/vimfiles/mappings.vim
source ~/.config/nvim/vimfiles/coc.vim
source ~/.config/nvim/vimfiles/nerdtree.vim
source ~/.config/nvim/vimfiles/terraform.vim
source ~/.config/nvim/vimfiles/wiki.vim

let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'template_path': '', 'custom_wiki2html': '$HOME/.bin/wiki2html.sh' }]

let g:vimwiki_global_ext = 1
let g:vimwiki_markdown_link_ext = 1

autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')

let g:node_client_debug = 1

lua <<EOF
require('init')
EOF
