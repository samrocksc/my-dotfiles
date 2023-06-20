local vim = vim
local map = vim.api.nvim_set_keymap -- set keys
local opt = vim.opt
local o = vim.o                     -- set global options
local wo = vim.wo                   -- windows options(line numbers)
local bo = vim.bo                   -- buffer local
local g = vim.g                     -- global
local cmd = vim.cmd
local api = vim.api
g.mapleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
opt.rtp:prepend(lazypath)

require('plenary.reload').reload_module('init', true)

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
o.updatetime = 250
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

api.nvim_set_option("termguicolors", true)

cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
cmd('syntax enable')
cmd('colorscheme jellybeans')
cmd('set smartindent')
cmd('set autoindent')
cmd('set backupcopy=yes')
cmd('set cursorline!')
cmd('set lazyredraw')
cmd('set encoding=utf-8')
cmd('set nocompatible')
cmd('set ttyfast')
cmd('set autoread')
cmd('set backspace=2')
cmd('set backspace=indent,eol,start')
cmd('set directory-=.')
cmd('set incsearch')
cmd('set list')
cmd('set listchars=tab:▸\\ ,trail:▫')
cmd('set ruler')
cmd('set scrolloff=3')
cmd('set showcmd')
cmd('set tabstop=2')
cmd('set wildignore=log/**,node_modules/**,target/**,tmp/**,tags*,*.rbc')
cmd('set mouse=a')
cmd('set cursorline')
cmd('hi CursorLine term=bold cterm=bold guibg=Grey20')
cmd('nnoremap <leader>we :pu=strftime(\'%d.%m.%Y\')<CR>')
cmd('nnoremap <leader>wt :pu=strftime(\'%H%M\')')
cmd('let g:sneak#label = 1')
cmd('let g:UltiSnipsExpandTrigger="<c-h>"')
cmd('let g:UltiSnipsJumpForwardTrigger="<c-b>"')
cmd('let g:UltiSnipsJumpBackwardTrigger="<c-z>"')
cmd('map f <Plug>Sneak_s')
cmd('map F <Plug>Sneak_S')
cmd('nnoremap <Leader>vd :call vimspector#Launch()<CR>')
cmd('nnoremap <Leader>ve :call vimspector#Reset()<CR>')
cmd('nnoremap <Leader>vc :call vimspector#Continue()<CR>')
cmd('nnoremap <Leader>vt :call vimspector#ToggleBreakpoint()<CR>')
cmd('nnoremap <Leader>vT :call vimspector#ClearBreakpoints()<CR>')
cmd('nnoremap <silent> K :lua vim.lsp.buf.hover()<CR>')
cmd('nmap <Leader>vk <Plug>VimspectorRestart')
cmd('nmap <Leader>vh <Plug>VimspectorStepOut')
cmd('nmap <Leader>vl <Plug>VimspectorStepInto')
cmd('nmap <Leader>vj <Plug>VimspectorStepOver')
cmd('nmap <silent> gd <cmd>lua vim.lsp.buf.definition()<cr>')

require("plugins")
require("keymaps")

require("user/trouble")

require('lsp/mason')
require('lsp/typescript')
require('lsp/null')
require('lsp/cmp')
require('lsp/prettier')

require("user/lualine")
require("user/telescope")
require("user/toggleterm")

require('configs/illuminate')
require('configs/bufferline')
require('configs/gitsigns')
require('configs/fixcursorhold')
require('configs/nvim-tree')

-- vim.cmd 'source ~/.config/nvim/vimfiles/nerdtree.vim'
