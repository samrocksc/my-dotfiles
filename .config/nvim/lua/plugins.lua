require("lazy").setup({
  "folke/which-key.nvim",
  { "folke/neoconf.nvim",      cmd = "Neoconf" },
  "folke/neodev.nvim",
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  'nanotech/jellybeans.vim',
  'luisiacc/gruvbox-baby',
  'prettier/vim-prettier',
  'tpope/vim-markdown',
  'tpope/vim-fugitive',
  'tpope/vim-commentary',
  'sheerun/vim-polyglot',
  'tpope/vim-rhubarb',
  'scrooloose/nerdtree',
  'bronson/vim-trailing-whitespace',
  'ryanoasis/vim-devicons',
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
  "lukas-reineke/lsp-format.nvim",
  'MunifTanjim/prettier.nvim',
  'tpope/vim-surround',
  'kdheepak/lazygit.nvim',
  "RRethy/vim-illuminate",
  "lewis6991/gitsigns.nvim",
  'antoinemadec/FixCursorHold.nvim',
  'folke/neodev.nvim',
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu'
  },
  {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons',
    },
  },
  { 'airblade/vim-gitgutter',  branch = 'main' },
  { 'akinsho/bufferline.nvim', requires = 'nvim-tree/nvim-web-devicons' },
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
  },
  {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
  },
  { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
}
)
require("mason").setup()
require("mason-lspconfig").setup()
