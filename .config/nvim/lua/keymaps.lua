local wk = require("which-key")

---@diagnostic disable-next-line: redundant-parameter
wk.setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}

wk.register({
    b = { "<cmd>Telescope buffers<cr>", "Buffers" },
    c = {
      name = "system specific",
      r = { "<cmd>CocRestart<cr>", "Restart CoC" },
      i = { "<cmd>LspInfo<cr>", "Language Info" }
    },
    f = {
      name = "file", -- optional group name
      f = { "<cmd>Telescope find_files<cr>", "Find File" },
      b = { "<cmd>Telescope buffers<cr>", "Buffers" },
      r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
      h = { "<cmd>Telescope help_tags<cr>", "All tags", noremap = false },
      a = { "<cmd>Telescope live_grep<cr>", "Find All" },
      e = { "<cmd>NERDTreeToggle<CR>", "Nerdtree" },
    },
    g = {
      name = "Fugitive",
      g = { "<cmd>vertical Git<cr>", "Diff" },
      c = { "<cmd>Git commit<cr>", "Commit" },
      p = { "<cmd>Git push<cr>", "Push" },
      b = { "<cmd>GBrowse<cr>", "Open in Browser" },
      i = { "<cmd>Git blame<cr>", "Blame" },
      l = { "<cmd>LazyGit<cr>", "Lazy Git" },
      f = { "<cmd>LazyGitCurrentFile<cr>", "Lazy Git File" },
      d = {
        h = { "<cmd>Ghdiffsplit<cr>", "Diff horizontal split" },
        d = { "<cmd>Git diff develop<cr>", "Diff develop" },
        m = { "<cmd>Git diff main<cr>", "Diff main" },
      },
      s = { "<cmd>Git pull<cr>", "Sync" }
    },
    l = {
      name = "Editor",
      a = { "<Cmd>lua vim.lsp.buf.code_action()<cr>", "Actions" },
      D = { "<cmd>Telescope diagnostics<cr>", "Diagnostics" },
      d = { "<cmd>Telescope lsp_definitions<cr>", "Definitions" },
      e = { "<cmd>lua vim.diagnostic.open_float(nil, {focus=false, scope=\"cursor\"})<CR>", "diagnostics" },
      f = { "<cmd>lua vim.lsp.buf.format()<cr>", "Format" },
      h = { "<cmd>Telescope commands<cr>", "Telescope CoC commands" },
      i = { "<Cmd>lua vim.lsp.buf.hover()<cr>", "Show Documentation" },
      o = { "<cmd>Vista nvim_lsp<cr>", "Outline" },
      r = { "<cmd>Telescope lsp_references<cr>", "References" },
      R = { "<Plug>(coc-rename)", "Rename(F2)" },
      t = { "<cmd>Telescope lsp_type_definitions<cr>", "Type Definitions" },
      w = { "<cmd>FixWhitespace<cr>", "Fix Whitespace" },
      -- e = { "<cmd>edit $MYVIMRC<CR>", "Edit RC" },
      T = { "<cmd>TroubleToggle<CR>", "Trouble" }
    },
    m = {
      name = "Macros",
      D = { "<cmd>put =strftime('%d.%m.%Y')<cr>", "Date" },
      m = { "<cmd>!markmap %<CR>", "MarkMap" },
    },
    M = {
      name = "Misc",
      f = { "<cmd>FixWhitespace<cr>", "Fix Whitespace" },
    },
    n = {
      name = "Neovim",
      r = { "<cmd>luafile ~/.config/nvim/init.lua<CR>", "Reload" },
      u = { "<cmd>PackerUpdate<CR>", "Update plugins" },
      t = { "<cmd>term<CR>", "Terminal" },
    },
    s = {
      name = "Snippets",
      m = { "<cmd>UltiSnipsEdit<cr>", "Edit" },
    },
    t = {
      c = { "<cmd>tabnew<cr>", "Create Tab" },
      n = { "<cmd>tabNext<cr>", "Next Tab" },
      p = { "<cmd>tabprevious<cr>", "Previous Tab" },
      x = { "<cmd>tabclose<cr>", "Close Tab" },
    },
    p = { "<cmd>CocCommand prettier.formatFile<cr>", "prettier" },
    w = {
      w = { "<Plug>VimwikiIndex", "Index" },
      b = { "<Plug>VimwikiGoBackLink", "Go Back" },
      h = { "<cmd>Vimwiki2HTMLBrowse<CR>", "Browse" },
      a = { "<cmd>VimwikiAll2HTML<CR>", "Convert All" },
      s = { "<cmdjVimwikiSearch<CR>" },
      r = { "<cmd>Telescope coc references<cr>", "References" },
    },
    x = {
      name = "Trouble",
      x = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
      z = { "<cmd>TroubleToggle quickfix<cr>", "QuickFixes" },
      w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace issues" },
      l = { "<cmd>TroubleToggle lsp_references <cr>", "LSP References" }
    }
  },
  {
    mode = "n",
    prefix = "<leader>"
  })
