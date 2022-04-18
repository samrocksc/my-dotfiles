--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "onedarker"

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = ","
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = false
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
-- local _, actions = pcall(require, "telescope.actions")
-- lvim.builtin.telescope.defaults.mappings = {
--   -- for input mode
--   i = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--     ["<C-n>"] = actions.cycle_history_next,
--     ["<C-p>"] = actions.cycle_history_prev,
--   },
--   -- for normal mode
--   n = {
--     ["<C-j>"] = actions.move_selection_next,
--     ["<C-k>"] = actions.move_selection_previous,
--   },
-- }

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnostics" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble workspace_diagnostics<cr>", "Wordspace Diagnostics" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheReset` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- -- set a formatter, this will override the language server formatting capabilities (if it exists)
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  -- { command = "black", filetypes = { "python" } },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
    extra_args = { "--print-with", "100" },
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
    filetypes = { "typescript", "typescriptreact" },
  },
}

-- -- set additional linters
-- local linters = require "lvim.lsp.null-ls.linters"
-- linters.setup {
--   { command = "flake8", filetypes = { "python" } },
--   {
--     -- each linter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
--     command = "shellcheck",
--     ---@usage arguments to pass to the formatter
--     -- these cannot contain whitespaces, options such as `--line-width 80` become either `{'--line-width', '80'}` or `{'--line-width=80'}`
--     extra_args = { "--severity", "warning" },
--   },
--   {
--     command = "codespell",
--     ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
--     filetypes = { "javascript", "python" },
--   },
-- }

-- Additional Plugins
lvim.plugins = {
  { 'vimwiki/vimwiki' },
  { 'easymotion/vim-easymotion' },
  { 'tpope/vim-fugitive' },
  { 'tpope/vim-rhubarb' },
  { 'justinmk/vim-sneak' },
  { 'github/copilot.vim' }
}

vim.api.nvim_exec(
  [[
  let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md', 'template_path': '', 'custom_wiki2html': '$HOME/.bin/wiki2html.sh' }]
  let g:vimwiki_global_ext = 1
  let g:vimwiki_markdown_link_ext = 1
  let g:vimwiki_list = [{
  \ 'path': '~/vimwiki',
  \ 'template_path': '~/vimwiki/templates/',
  \ 'template_default': 'default',
  \ 'syntax': 'markdown',
  \ 'ext': '.md',
  \ 'path_html': '~/vimwiki/site_html/',
  \ 'custom_wiki2html': 'vimwiki_markdown',
  \ 'template_ext': '.tpl'}]

  :nmap <Leader>ww <Plug>VimwikiIndex
  :nmap <Leader>wb <Plug>VimwikiGoBackLink
  :nmap <Leader>wh :Vimwiki2HTMLBrowse<CR>
  :nmap <Leader>wa :VimwikiAll2HTML<CR>
  :nmap <leader>ws :VimwikiSearch<CR>
  :nmap <leader>wt :VimwikiTOC<CR>
  let g:sneak#label = 1
  :nmap f <Plug>Sneak_s
  ]],
  true)

lvim.builtin.which_key.mappings["f"] = {
  name = "file", -- optional group name
  f = { "<cmd>Telescope find_files<cr>", "Find File" },
  b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
  h = { "<cmd>Telescope help_tags<cr>", "All tags", noremap = false },
  a = { "<cmd>Telescope live_grep<cr>", "Find All" },
}
lvim.builtin.which_key.mappings["a"] = { "<cmd>ToggleTermToggleAll<cr>", "Toggle Terminal" }
lvim.builtin.which_key.mappings["d"] = { "<cmd>NvimTreeToggle<CR>", "Explorer" }
lvim.builtin.which_key.mappings["t"] = {
  name = "ToggleTerm",
  h = { "<cmd>ToggleTerm size=40 direction=horizontal<cr>", "Horizontal" },
  f = { "<cmd>ToggleTerm size=40 direction=float<cr>", "Float" },
  v = { "<cmd>ToggleTerm size=40 direction=vertical<cr>", "Vertical" },
  t = { "<cmd>ToggleTermToggleAll<cr>", "toggle" }
}
lvim.builtin.which_key.mappings["w"] = {} -- disable w regular
lvim.builtin.which_key.mappings["g"] = {
  name = "Fugitive",
  g = { "<cmd>vertical Git<cr>", "Diff" },
  c = { "<cmd>Git commit<cr>", "Commit" },
  p = { "<cmd>Git push<cr>", "Push" },
  b = { "<cmd>GBrowse<cr>", "Open in Browser" },
  i = { "<cmd>Git blame<cr>", "Blame" },
  d = {
    d = { "<cmd>Git diff develop<cr>", "Diff develop" },
    m = { "<cmd>Git diff main<cr>", "Diff main" },
  },
  s = { "<cmd>Git pull<cr>", "Sync" }
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup {
  {
    command = "eslint_d",
    -- command = "eslint",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  },
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
}

linters.setup {
  {
    command = "eslint_d",
    -- command = "eslint",
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  },
  filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
