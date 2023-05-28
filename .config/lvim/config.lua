--
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

local formatters = require "lvim.lsp.null-ls.formatters"

-- keymaps!
-- lvim.keys.normal_mode["<C-t>"] = ":ToggleTerm size=40 direction=float<cr>"
-- lvim.keys.normal_mode["<C-\\>"] = false

-- lvim.plugins.ToggleTerm.setup {
--   open_mapping = [[C-t]]
-- }

lvim.plugins = {
  {
    'scrooloose/nerdtree',
    "folke/trouble.nvim",
  },
}

local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.code_actions.eslint,
  null_ls.builtins.code_actions.refactoring,
  null_ls.builtins.code_actions.gitsigns,
  null_ls.builtins.formatting.stylua,
  null_ls.builtins.formatting.terraform_fmt,
  null_ls.builtins.formatting.gofmt,
  null_ls.builtins.formatting.prettier.with({
    prefer_local = "node_modules/.bin",
  }),
  null_ls.builtins.diagnostics.eslint,
  -- null_ls.builtins.diagnostics.spectral,
  null_ls.builtins.diagnostics.yamllint,
  null_ls.builtins.diagnostics.terraform_validate,
  null_ls.builtins.completion.spell
}

null_ls.setup({
  sources = sources,
})


lvim.builtin.terminal.open_mapping = [[<C-t>]]

lvim.builtin.which_key.mappings["b"] = { b = { "<cmd>Telescope buffers<cr>", "Buffers" } }

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "document" },
  q = { "<cmd>Trouble quickfix<cr>", "quickfix" },
  l = { "<cmd>Trouble loclist<cr>", "loclist" },
  r = { "<cmd>Trouble lsp_references<cr>", "references" },
}

lvim.builtin.which_key.mappings["f"] = {
  name = "file", -- optional group name
  f = { "<cmd>Telescope find_files<cr>", "Find File" },
  b = { "<cmd>Telescope buffers<cr>", "Buffers" },
  r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
  h = { "<cmd>Telescope help_tags<cr>", "All tags", noremap = false },
  a = { "<cmd>Telescope live_grep<cr>", "Find All" },
  e = { "<cmd>NERDTreeToggle<CR>", "Nerdtree" },
}

lvim.builtin.telescope.defaults.layout_config.preview_cutoff = 40

lvim.builtin.telescope.defaults.path_display = {"absolute"}

formatters.setup {
  { name = "black" },
  {
    name = "prettier",
    ---@usage arguments to pass to the formatter
    -- these cannot contain whitespace
    -- options such as `--line-width 80` become either `{"--line-width", "80"}` or `{"--line-width=80"}`
    -- args = { "--print-width", "100" },
    ---@usage only start in these filetypes, by default it will attach to all filetypes it supports
    filetypes = { "typescript", "typescriptreact" },
  },
}
