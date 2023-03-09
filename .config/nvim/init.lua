-- You have to make sure you have the proper plugins installed in order for this config to work with COC
-- npm i -g markmap-cli
-- CocInstall coc-tsserver coc-prettier coc-eslint coc-markmap coc-marketplace coc-webview coc-markdown-preview-enhanced coc-lightbulb coc-json coc-html
local map = vim.api.nvim_set_keymap -- set keys
local o = vim.o -- set global options
local wo = vim.wo -- windows options(line numbers)
local bo = vim.bo -- buffer local
local g = vim.g -- global
g.mapleader = " "

require('plenary.reload').reload_module('my', true)

-- This is the basic setup for reassigning hjkl keys to vim keys
map("t", "<C-t>", "<cmd>ToggleTerm size=40 direction=float<cr>", { noremap = true })
map("", "<C-t>", "<cmd>ToggleTerm size=40 direction=float<cr>", { noremap = true })
map("n", "<C-h>", "<C-w>h", {})
map("n", "<C-j>", "<C-w>j", {})
map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-l>", "<C-w>l", {})

o.clipboard = "unnamedplus"
o.ignorecase = true
o.cmdheight = 2
o.updatetime = 300
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12
o.hidden = true
o.autoindent = true


wo.number = true
wo.wrap = true

bo.expandtab = true

vim.api.nvim_set_option("termguicolors", true)

vim.cmd('colorscheme jellybeans')
vim.cmd('set smartindent')
vim.cmd('set autoindent')
vim.cmd('set backupcopy=yes')
vim.cmd('set cursorline!')
vim.cmd('set lazyredraw')
vim.cmd('set encoding=utf-8')
vim.cmd('set nocompatible')
vim.cmd('set ttyfast')
vim.cmd('set autoread')
vim.cmd('set backspace=2')
vim.cmd('set backspace=indent,eol,start')
vim.cmd('set directory-=.')
vim.cmd('set incsearch')
vim.cmd('set list')
vim.cmd('set listchars=tab:▸\\ ,trail:▫')
vim.cmd('set ruler')
vim.cmd('set scrolloff=3')
vim.cmd('set showcmd')
vim.cmd('set tabstop=2')
vim.cmd('set wildignore=log/**,node_modules/**,target/**,tmp/**,tags*,*.rbc')
vim.cmd('set mouse=a')
vim.cmd('set cursorline')
vim.cmd('hi CursorLine term=bold cterm=bold guibg=Grey20')
vim.cmd('nnoremap <leader>we :pu=strftime(\'%d.%m.%Y\')<CR>')
vim.cmd('nnoremap <leader>wt :pu=strftime(\'%H%M\')')
vim.cmd('autocmd FileType jsx nnoremap <leader>p :CocCommand prettier.formatFile<CR>')
vim.cmd('autocmd FileType js nnoremap <leader>p :CocCommand prettier.formatFile<CR>')
vim.cmd('autocmd FileType tsx nnoremap <leader>p :CocCommand prettier.formatFile<CR>')
vim.cmd('autocmd FileType ts nnoremap <leader>p :CocCommand prettier.formatFile<CR>')
vim.cmd('autocmd FileType sql nnoremap <leader>p :CocCommand sql.Format<CR>')
--call CocAction('format')
vim.cmd('let g:sneak#label = 1')
vim.cmd('let g:UltiSnipsExpandTrigger="<c-h>"')
vim.cmd('let g:UltiSnipsJumpForwardTrigger="<c-b>"')
vim.cmd('let g:UltiSnipsJumpBackwardTrigger="<c-z>"')
vim.cmd('imap <C-l> <Plug>(coc-snippets-expand)')
vim.cmd('map f <Plug>Sneak_s')
vim.cmd('map F <Plug>Sneak_S')
vim.cmd('nnoremap <Leader>vd :call vimspector#Launch()<CR>')
vim.cmd('nnoremap <Leader>ve :call vimspector#Reset()<CR>')
vim.cmd('nnoremap <Leader>vc :call vimspector#Continue()<CR>')
vim.cmd('nnoremap <Leader>vt :call vimspector#ToggleBreakpoint()<CR>')
vim.cmd('nnoremap <Leader>vT :call vimspector#ClearBreakpoints()<CR>')
vim.cmd('nmap <Leader>vk <Plug>VimspectorRestart')
vim.cmd('nmap <Leader>vh <Plug>VimspectorStepOut')
vim.cmd('nmap <Leader>vl <Plug>VimspectorStepInto')
vim.cmd('nmap <Leader>vj <Plug>VimspectorStepOver')

require("plugins")
require("keymaps")
-- require("user/feline")
require("user/lualine")
require("user/telescope")
require("user/toggleterm")
vim.cmd 'source ~/.config/nvim/vimfiles/coc.vim'
vim.cmd 'source ~/.config/nvim/vimfiles/nerdtree.vim'
vim.cmd 'source ~/.config/nvim/vimfiles/wiki.vim'

