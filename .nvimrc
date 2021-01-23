" vim-plug
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
Plug 'hashivim/vim-terraform'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-markdown'
Plug 'nanotech/jellybeans.vim'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'sheerun/vim-polyglot'
Plug 'bronson/vim-trailing-whitespace'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'vim-airline/vim-airline'"
Plug 'maxmellon/vim-jsx-pretty'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
" Plug 'jiangmiao/auto-pairs'
" Plug 'heavenshell/vim-jsdoc'
" Plug 'w0rp/ale'
" Plug 'ddollar/nerdcommenter'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'puremourning/vimspector'
" Plug 'leafOfTree/vim-svelte-plugin'
" Plug 'sotte/presenting.vim'
" Plug 'aserebryakov/vim-todo-lists'
" Plug 'leafgarland/typescript-vim'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'ryanoasis/vim-devicons'
" Plug 'jonsmithers/vim-html-template-literals'
" Plug 'othree/jsdoc-syntax.vim'
" Plug 'gosukiwi/vim-atom-dark'
" Plug 'kkoomen/vim-doge'
" Plug 'tommcdo/vim-fubitive'
" Plug 'Shougo/vimproc.vim', {'do' : 'make'}
" Plug 'vim-airline/vim-airline-themes'
" Plug 'mhinz/vim-signify'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
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
""""Mappings""""""
""""""""""""""""""
source ~/.vim/coc.vim
source ~/.vim/general.vim
source ~/.vim/mappings.vim
source ~/.vim/nerdtree.vim
source ~/.vim/sets.vim
source ~/.vim/terraform.vim
" source ~/.vim/fugitive.vim
" source ~/.vim/cocdefault.vim
" source ~/.vim/jsdoc.vim
" source ~/.vim/snippets.vim
" source ~/.vim/theme.vim
" source ~/.vim/notes.vim
" source ~/.vim/ag.vim
" source ~/.vim/vimgo.vim
" source ~/.vim/prettier.vim
" source ~/.vim/markdown.vim
" source ~/.vim/airline.vim
" source ~/.vim/ui.vim
" source ~/.vim/workonly.vim
" source ~/.vim/doge.vim


let g:vimwiki_list = [{'path': '~/vimwiki', 'template_path': '~/vimwiki/templates/',
          \ 'template_default': 'default', 'syntax': 'markdown', 'ext': '.md',
          \ 'path_html': '~/vimwiki/site_html/', 'custom_wiki2html': 'vimwiki_markdown',
          \ 'html_filename_parameterization': 1,
          \ 'template_ext': '.tpl'}]


" let g:vimspector_enable_mappings = 'HUMAN'
" " packadd ~/.vim/pack/vimspector/opt/vimspector


let g:node_client_debug = 1
