local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim',
    install_path })
end

require('packer').startup(function()
  -- no need to configure
  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'nanotech/jellybeans.vim',
    'prettier/vim-prettier',
    'tpope/vim-markdown',
    'tpope/vim-fugitive',
    'tpope/vim-commentary',
    'sheerun/vim-polyglot',
    'tpope/vim-rhubarb',
    'scrooloose/nerdtree',
    'bronson/vim-trailing-whitespace',
    'ryanoasis/vim-devicons',
    'airblade/vim-gitgutter',
    'mhinz/vim-signify',
    'jiangmiao/auto-pairs',
    'easymotion/vim-easymotion',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'kyazdani42/nvim-web-devicons',
    'folke/which-key.nvim',
    'akinsho/toggleterm.nvim',
    'justinmk/vim-sneak',
    'liuchengxu/vista.vim',
    'cedarbaum/fugitive-azure-devops.vim',
    -- "lukas-reineke/lsp-format.nvim",
    'MunifTanjim/prettier.nvim',
    'tpope/vim-surround',
    'kdheepak/lazygit.nvim',
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { "wbthomason/packer.nvim" }
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use({
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  })
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  if packer_bootstrap then
    require('packer').sync()
  end
end)

require("mason").setup()
require("mason-lspconfig").setup()
