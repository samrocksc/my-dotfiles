local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup(function()
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'nanotech/jellybeans.vim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { "wbthomason/packer.nvim" }
  use 'tpope/vim-markdown'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'
  use 'sheerun/vim-polyglot'
  use 'tpope/vim-rhubarb'
  use { 'neoclide/coc.nvim', branch = 'release' }
  use 'scrooloose/nerdtree'
  use 'bronson/vim-trailing-whitespace'
  use 'hashivim/vim-terraform'
  use 'ryanoasis/vim-devicons'
  use 'airblade/vim-gitgutter'
  use 'mustache/vim-mustache-handlebars'
  use 'mhinz/vim-signify'
  use { 'fatih/vim-go', cmd = 'GoUpdateBinaries' }
  use 'jiangmiao/auto-pairs'
  use 'vimwiki/vimwiki'
  use 'easymotion/vim-easymotion'
  use { 'mg979/vim-visual-multi', branch = 'master' }
  use 'fannheyward/telescope-coc.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'kyazdani42/nvim-web-devicons'
  use 'folke/which-key.nvim'
  use 'lewis6991/spellsitter.nvim'
  use 'rcarriga/nvim-notify'
  use 'honza/vim-snippets'
  use 'rhysd/git-messenger.vim'
  use 'akinsho/toggleterm.nvim'
  use 'liuchengxu/vista.vim'
  use 'github/copilot.vim'
  use 'justinmk/vim-sneak'
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use 'styled-components/vim-styled-components'
  use 'pangloss/vim-javascript'
  use 'puremourning/vimspector'
  if packer_bootstrap then
    require('packer').sync()
  end
end)
